resource "cloudflare_record" "C_email_zoomboompod" {
  zone_id = cloudflare_zone.zoomboompod.id
  name    = "email"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "email.secureserver.net"
}

resource "cloudflare_record" "C_www_zoomboompod" {
  zone_id = cloudflare_zone.zoomboompod.id
  name    = "www"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "zoomboompod.com"
}

resource "cloudflare_record" "C_apex_zoomboompod" {
  zone_id = cloudflare_zone.zoomboompod.id
  name    = "zoomboompod.com"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "app.buzzsprout.com"
}

resource "cloudflare_record" "MX_zoomboompod_1" {
  zone_id  = cloudflare_zone.zoomboompod.id
  name     = "zoomboompod.com"
  type     = "MX"
  ttl      = "1"
  proxied  = "false"
  priority = "0"
  value    = "mailstore1.secureserver.net"
}

resource "cloudflare_record" "MX_zoomboompod_10" {
  zone_id  = cloudflare_zone.zoomboompod.id
  name     = "zoomboompod.com"
  type     = "MX"
  ttl      = "1"
  proxied  = "false"
  priority = "10"
  value    = "smtp.secureserver.net"
}

resource "cloudflare_record" "SRV__autodiscover_tcp" {
  zone_id = cloudflare_zone.zoomboompod.id
  name    = "_autodiscover._tcp"
  type    = "SRV"
  data {
    service  = "_autodiscover"
    proto    = "_tcp"
    name     = "zoomboompod.com"
    priority = 0
    weight   = 0
    port     = 443
    target   = "autodiscover.secureserver.net"
  }
}
