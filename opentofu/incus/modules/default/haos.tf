resource "incus_instance" "haos" {
  name    = "haos"
  description      = "Home Assistant OS"
  type             = "virtual-machine"
  image            = "haos-16.2"
  config           = {
    "limits.cpu"    = "2"
    "limits.memory" = "4GiB"
    #    "raw.qemu"      = "-chardev serial,path=/dev/ttyConBee2,id=acm -usb -device usb-serial,chardev=acm"
  }
  profiles         = [
    "default",
    "macvlan",
  ]
}

