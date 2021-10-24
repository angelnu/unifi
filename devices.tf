resource "unifi_device" "switch_living_room" {
    mac      = "24:5a:4c:53:17:b2"
    name     = "Switch Livingroom"
    site     = "default"
    port_override {
        name            = "Switch Livingroom Cluster"
        number          = 1
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Livingroom TV"
        number          = 2
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "NUC 4"
        number          = 3
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Alicia"
        number          = 4
        port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_workroom" {
    mac      = "24:5a:4c:53:1b:db"
    name     = "Switch Workroom"
    site     = "default"
    port_override {
        name            = "Switch Workroom Right"
        number          = 1
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Guestroom"
        number          = 2
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Alicia"
        number          = 3
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Workroom Right"
        number          = 4
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Printer"
        number          = 8
        port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_guestroom" {
    mac      = "24:5a:4c:53:1c:68"
    name     = "Switch Guestroom"
    site     = "default"
    port_override {
        name            = "Switch Guestroom PC"
        number          = 1
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Guestroom AP"
        number          = 2
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Dragino AP"
        number          = 7
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Workroom"
        number          = 8
        port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_long_corridor" {
    mac      = "24:5a:4c:53:1c:bc"
    name     = "Switch Long Corridor"
    site     = "default"
    port_override {
        name            = "AP-Kitchen"
        number          = 1
        port_profile_id = data.unifi_port_profile.lte.id
    }
    port_override {
        name            = "Switch Alicia"
        number          = 2
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "AP-Corridor"
        number          = 3
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "AP-Workroom"
        number          = 4
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Homematic GW"
        number          = 5
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Router"
        number          = 6
        port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "long_corridor_ap" {
    mac      = "68:d7:9a:3a:85:4b"
    name     = "Long Corridor AP"
    site     = "default"
}

resource "unifi_device" "switch_guestroom_ap" {
    mac      = "68:d7:9a:4f:0f:71"
    name     = "Switch Guestroom AP"
    site     = "default"
    port_override {
      name            = "Switch Guestroom"
      number          = 1
      port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
      name            = "Guestroom AP"
      number          = 5
      port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_livingroom_tv" {
    mac      = "68:d7:9a:4f:0f:9d"
    name     = "Switch Livingroom TV"
    site     = "default"
    port_override {
        name            = "Switch Livingroom"
        number          = 1
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Chromecast"
        number          = 2
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "FireTV"
        number          = 3
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Table TV"
        number          = 4
        port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_guestroom_pc" {
    mac      = "68:d7:9a:4f:0f:b7"
    name     = "Switch Guestroom PC"
    site     = "default"
    port_override {
      name            = "Switch Guestroom"
      number          = 1
      port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
      name            = "Desktop PC"
      number          = 2
      port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_workroom_pc_right" {
    mac      = "68:d7:9a:4f:0f:b9"
    name     = "Switch Workroom PC Right"
    site     = "default"
    port_override {
      name            = "Switch Workroom"
      number          = 1
      port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
      name            = "Raspberry"
      number          = 2
      port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
      name            = "Port replicator"
      number          = 5
      port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_workroom_pc_left" {
    mac      = "68:d7:9a:4f:0f:d4"
    name     = "Switch Workroom PC Left"
    site     = "default"
    port_override {
      name            = "Switch Workroom"
      number          = 1
      port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_living_cluster" {
    mac      = "74:ac:b9:a9:c5:ce"
    name     = "Switch Livingroom Cluster"
    site     = "default"
    port_override {
        name            = "Switch Livingroom"
        number          = 1
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "NAS"
        number          = 2
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "NUC 1"
        number          = 3
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "NUC 2"
        number          = 4
        port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "NUC 3"
        number          = 5
        port_profile_id = data.unifi_port_profile.all.id
    }
}

resource "unifi_device" "switch_alicia" {
    mac      = "74:ac:b9:ae:76:a5"
    name     = "Switch Alicia"
    site     = "default"
    port_override {
      name            = "Switch Corridor"
      number          = 1
      port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
      name            = "Switch Livingroom"
      number          = 2
      port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
      name            = "Switch Workroom"
      number          = 3
      port_profile_id = data.unifi_port_profile.all.id
    }
}