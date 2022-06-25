terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.YC_TOKEN
  cloud_id  = "b1gpf0sdmtpvil39scs3"
  folder_id = "b1gfcufkavmok3el82oa"
  zone      = "ru-central1-b"
}

resource "yandex_compute_image" "foo-image" {
  name       = "my-custom-image"
  source_image = "fd8hafusaj96qep5ub6h"
}

variable "YC_TOKEN" {
    type        = string
}
