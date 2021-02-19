resource "cloudflare_record" "TXT_spf_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "greenacreslimited.com"
  type    = "TXT"
  ttl     = "1"
  proxied = "false"
  value   = "v=spf1 mx include:netblocks.dreamhost.com ~all"
}

resource "cloudflare_record" "TXT_google_verif_greenacreslimited" {
  zone_id = cloudflare_zone.greenacreslimited.id
  name    = "greenacreslimited.com"
  type    = "TXT"
  ttl     = "1"
  proxied = "false"
  value   = "google-site-verification=uP0NdVMRRbaJGmtlGUyDHeNnA9aDBBYDwq5sE2uUCpA"
}
