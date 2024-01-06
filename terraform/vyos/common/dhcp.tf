resource "vyos_config_block_tree" "dhcp" {
  path = "service dhcp-server"

  configs = merge(
    {
      # main setup
      "hostfile-update" = "" # Create DNS record per client lease, by adding clients to /etc/hosts file. Entry will have format: <shared-network-name>_<hostname>.<domain-name>
      "host-decl-name" = ""  # Will drop <shared-network-name>_ from client DNS record, using only the host declaration name and domain: <hostname>.<domain-name>
      "shared-network-name lan domain-name" = var.config.networks.lan.dhcp.domain_name,
      "shared-network-name lan ping-check" = "",
      "shared-network-name lan authoritative" = "",
      "shared-network-name lan subnet ${var.config.networks.lan.cidr} default-router" = var.config.networks.lan.vrrp.ip,
      "shared-network-name lan subnet ${var.config.networks.lan.cidr} lease" = "86400",
      "shared-network-name lan subnet ${var.config.networks.lan.cidr} name-server"= var.config.networks.lan.vrrp.ip,
      "shared-network-name lan subnet ${var.config.networks.lan.cidr} enable-failover"=""
    },
    merge([
      # ranges
      for name, range in var.config.networks.lan.dhcp.range : {
        "shared-network-name lan subnet ${var.config.networks.lan.cidr} range ${name} start" = range.start
        "shared-network-name lan subnet ${var.config.networks.lan.cidr} range ${name} stop" = range.stop
      }
    ]...),
    {
      "failover source-address" = var.config.networks.lan.router
      "failover name" = "lan"
      "failover remote" = var.config.networks.lan.dhcp.failover.remote
      "failover status" = var.config.networks.lan.dhcp.failover.status
    },
    merge([
      # static allocation
      for host in local.host_by_name_with_mac : {
        "shared-network-name lan subnet ${var.config.networks.lan.cidr} static-mapping ${host.name} mac-address" = host.mac
        "shared-network-name lan subnet ${var.config.networks.lan.cidr} static-mapping ${host.name} ip-address" = host.ip
      } if lookup(host, "is_dhcp", true)
    ]...),
  )
  depends_on = [
    vyos_config_block_tree.eth0
  ]
  timeouts {
    create = "60m"
    update = "60m"
    delete = "60m"
    default = "60m"
  }

}