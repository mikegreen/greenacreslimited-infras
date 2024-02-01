terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "greenacreslimited"

    workspaces {
      name = "cloudflare-prod"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }

}

provider "cloudflare" {
  api_token = var.cloudflare_api_token 
}


resource "cloudflare_zone" "greenacreslimited" {
  zone = "greenacreslimited.com"
  type = "full"
  account_id = var.cloudflare_account_id
}

resource "cloudflare_zone" "zoomboompod" {
  zone = "zoomboompod.com"
  type = "full"
  account_id = var.cloudflare_account_id
}

