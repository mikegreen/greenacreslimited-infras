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

resource "cloudflare_record" "A_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "greenacreslimited.com"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "69.163.155.199"
}

resource "cloudflare_record" "A_vault_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "vault"
  type    = "A"
  ttl     = "1"
  proxied = "false"
  value   = "75.166.39.232"
}