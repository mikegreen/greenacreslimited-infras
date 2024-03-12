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
  proxied = "true"
  value   = var.cl_dynamic_ip
}

resource "cloudflare_record" "A_server-12j9xx1_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "server-12j9xx1"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = var.cl_dynamic_ip
}

resource "cloudflare_record" "C_webodm_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "webodm"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = var.cl_dynamic_ip
}

resource "cloudflare_record" "C_webodm_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "redis-dev"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = var.cl_dynamic_ip
}
