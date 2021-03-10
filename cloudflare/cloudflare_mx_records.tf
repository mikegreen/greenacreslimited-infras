resource "cloudflare_record" "MX_greenacreslimited_com_apex_mx1" {
  zone_id  = cloudflare_zone.greenacreslimited.id
  name     = "greenacreslimited.com"
  type     = "MX"
  ttl      = "1"
  proxied  = "false"
  priority = "0"
  value    = "mx1.mailchannels.net"
}

resource "cloudflare_record" "MX_greenacreslimited_com_apex_mx5" {
  zone_id  = cloudflare_zone.greenacreslimited.id
  name     = "greenacreslimited.com"
  type     = "MX"
  ttl      = "1"
  proxied  = "false"
  priority = "5"
  value    = "mx2.mailchannels.net"
}

resource "cloudflare_record" "MX_greenacreslimited_com_mail_mx1" {
  zone_id  = cloudflare_zone.greenacreslimited.id
  name     = "mail"
  type     = "MX"
  ttl      = "1"
  proxied  = "false"
  priority = "0"
  value    = "mx1.mailchannels.net"
}

resource "cloudflare_record" "MX_greenacreslimited_com_mail_mx5" {
  zone_id  = cloudflare_zone.greenacreslimited.id
  name     = "mail"
  type     = "MX"
  ttl      = "1"
  proxied  = "false"
  priority = "5"
  value    = "mx2.mailchannels.net"
}
