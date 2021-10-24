resource "unifi_network" "lte" {
    dhcp_dns            = []
    dhcp_enabled        = false
    dhcp_lease          = 86400
    dhcp_relay_enabled  = false
    dhcp_start          = "192.168.16.6"
    dhcp_stop           = "192.168.16.254"
    dhcpd_boot_enabled  = false
    domain_name         = "lte"
    igmp_snooping       = false
    ipv6_interface_type = "none"
    ipv6_ra_enable      = true
    name                = "lte"
    network_group       = "LAN"
    purpose             = "corporate"
    site                = "default"
    subnet              = "192.168.64.0/24"
    vlan_id             = 2
    wan_dns             = []
    wan_egress_qos      = 0
}

resource "unifi_network" "LAN" {
    dhcp_dns            = []
    dhcp_enabled        = false
    dhcp_lease          = 86400
    dhcp_relay_enabled  = false
    dhcp_start          = "192.168.1.6"
    dhcp_stop           = "192.168.1.254"
    dhcpd_boot_enabled  = false
    domain_name         = "localdomain"
    igmp_snooping       = false
    ipv6_interface_type = "none"
    ipv6_ra_enable      = false
    name                = "LAN"
    network_group       = "LAN"
    purpose             = "corporate"
    site                = "default"
    subnet              = "192.168.0.0/19"
    vlan_id             = 0
    wan_dns             = []
    wan_egress_qos      = 0
}