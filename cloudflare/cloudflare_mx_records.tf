# resource "cloudflare_record" "MX_greenacreslimited_com_apex_mx1" {
#   zone_id  = cloudflare_zone.greenacreslimited.id
#   name     = "greenacreslimited.com"
#   type     = "MX"
#   ttl      = "1"
#   proxied  = "false"
#   priority = "0"
#   value    = "mx1.mailchannels.net"
# }

# resource "cloudflare_record" "MX_greenacreslimited_com_apex_mx5" {
#   zone_id  = cloudflare_zone.greenacreslimited.id
#   name     = "greenacreslimited.com"
#   type     = "MX"
#   ttl      = "1"
#   proxied  = "false"
#   priority = "5"
#   value    = "mx2.mailchannels.net"
# }

# resource "cloudflare_record" "MX_greenacreslimited_com_mail_mx1" {
#   zone_id  = cloudflare_zone.greenacreslimited.id
#   name     = "mail"
#   type     = "MX"
#   ttl      = "1"
#   proxied  = "false"
#   priority = "0"
#   value    = "mx1.mailchannels.net"
# }

# resource "cloudflare_record" "MX_greenacreslimited_com_mail_mx5" {
#   zone_id  = cloudflare_zone.greenacreslimited.id
#   name     = "mail"
#   type     = "MX"
#   ttl      = "1"
#   proxied  = "false"
#   priority = "5"
#   value    = "mx2.mailchannels.net"
# }

// terraform import cloudflare_record.MX_greenacreslimited_mx1 5f77ab4125c4f06b131c6f9923625b43/957548784701e1d4b59b7a320bcc48fa
resource "cloudflare_record" "MX_greenacreslimited_mx1" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name = cloudflare_zone.greenacreslimited.zone
  type = "MX"
  priority = "1"
  value = "aspmx.l.google.com"
}

// terraform import cloudflare_record.MX_greenacreslimited_mx5_1 5f77ab4125c4f06b131c6f9923625b43/27f2ba0ab255d72b7476210aa7805d93
resource "cloudflare_record" "MX_greenacreslimited_mx5_1" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name = "greenacreslimited.com"
  type = "MX"
  priority = "5"
  value = "alt2.aspmx.l.google.com"
}

resource "cloudflare_record" "MX_greenacreslimited_mx5_2" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name = "greenacreslimited.com"
  type = "MX"
  priority = "5"
  value = "alt1.aspmx.l.google.com"
}

resource "cloudflare_record" "MX_greenacreslimited_mx10_3" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name = "greenacreslimited.com"
  type = "MX"
  priority = "10"
  value = "alt3.aspmx.l.google.com"
}

resource "cloudflare_record" "MX_greenacreslimited_mx10_4" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name = "greenacreslimited.com"
  type = "MX"
  priority = "10"
  value = "alt4.aspmx.l.google.com"
}