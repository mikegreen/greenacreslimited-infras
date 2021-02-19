terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "greenacreslimited"

    workspaces {
      name = "cloudflare-prod"
    }
  }
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 2.0"
    }
  }
}

provider "cloudflare" { 
}


resource "cloudflare_zone" "greenacreslimited" {
  zone = "greenacreslimited.com"
  type = "full"
}

