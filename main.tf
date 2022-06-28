provider "yandex" {
  token     = var.YC_TOKEN
  cloud_id  = "b1gpf0sdmtpvil39scs3"
  folder_id = "b1gfcufkavmok3el82oa"
  zone      = "ru-central1-b"
}

resource "yandex_compute_instance" "default" {
  for_each = local.instance_count_map[terraform.workspace]
  name        = each.value
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  #count = local.instance_count_map[terraform.workspace]

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8hafusaj96qep5ub6h"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.foo.id}"
    nat = true
  }

  metadata = {
    foo      = "bar"
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }

  lifecycle {
    create_before_destroy = true
  }

}

resource "yandex_vpc_network" "foo" {}

resource "yandex_vpc_subnet" "foo" {
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone       = "ru-central1-a"
  network_id = "${yandex_vpc_network.foo.id}"
}

variable "YC_TOKEN" {
    type        = string
}

locals {
  instance_count_map = {
    stage = {
      "vm1" = "test1"
      "vm2" = "test2"
    }
    prod = {
      "vm1" = "test1"
      "vm2" = "test2"
      "vm3" = "test3"
    }
  }
}
