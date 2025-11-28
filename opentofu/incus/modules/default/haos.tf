resource "incus_instance" "haos" {
  name    = "haos"
  description      = "Home Assistant OS"
  type             = "virtual-machine"
  image            = "haos-16.2"
  config           = {
    "limits.cpu"    = "2"
    "limits.memory" = "4GiB"
    "boot.autostart"= true
    #    "raw.qemu"      = "-chardev serial,path=/dev/ttyConBee2,id=acm -usb -device usb-serial,chardev=acm"
  }
  profiles         = [
    "default",
    "macvlan",
  ]
  device {
    name = "ZWA"
    type = "usb"

    properties = {
      busnum = 001
      devnum = 002
    }
  }
  device {
    name = "usbfront"
    type = "usb"

    properties = {
      busnum = 001
      devnum = 004
    }
  }
}

