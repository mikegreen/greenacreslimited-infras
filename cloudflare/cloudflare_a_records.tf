resource "cloudflare_record" "A_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "greenacreslimited.com"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "69.163.155.199"
}

resource "cloudflare_record" "A_www_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "www"
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
  value   = "75.166.32.140"
}

resource "cloudflare_record" "A_vault-pr_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "vault-pr"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "18.223.119.112"
}