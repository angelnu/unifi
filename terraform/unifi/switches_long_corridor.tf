resource "unifi_device" "switch_e_long_corridor" {
    mac      = "e4:38:83:d0:f1:58"
    name     = "Switch E Long Corridor"
    site     = "default"
    port_override {
        name            = "TBD"
        number          = 1
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "TBD"
        number          = 2
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "TBD"
        number          = 3
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "TBD"
        number          = 4
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "TBD"
        number          = 6
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "TBD"
        number          = 7
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "TBD"
        number          = 8
        #port_profile_id = data.unifi_port_profile.all.id
    }
}



resource "unifi_device" "switch_long_corridor" {
    mac      = "24:5a:4c:53:1c:bc"
    name     = "Switch Long Corridor"
    site     = "default"
    port_override {
        name            = "AP-Kitchen"
        number          = 1
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Kitchen"
        number          = 2
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "AP-Corridor"
        number          = 3
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "AP-Workroom"
        number          = 4
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Fritzbox"
        number          = 5
        #port_profile_id = data.unifi_port_profile.fritzbox.id
    }
    port_override {
        name            = "Router"
        number          = 6
        #port_profile_id = data.unifi_port_profile.all.id
    }
    port_override {
        name            = "Switch Alicia"
        number          = 8
        #port_profile_id = data.unifi_port_profile.all.id
    }
}




