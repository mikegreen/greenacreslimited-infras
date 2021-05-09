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
  value   = "75.166.62.620"
}

resource "cloudflare_record" "A_vault-pr_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "vault-pr"
  type    = "A"
  ttl     = "1"
  proxied = "false"
  value   = "18.223.119.112"
}

resource "cloudflare_record" "webmail_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "webmail"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "69.163.136.138"
}

resource "cloudflare_record" "A_server-12j9xx1_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "server-12j9xx1"
  type    = "A"
  ttl     = "1"
  proxied = "false"
  value   = "75.166.40.0"
}
