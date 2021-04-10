consul {
  address = "consul:8500"
  retry {
    enabled = true
    attempts = 12
    backoff = "250ms"
    max_backoff = "1m"
  }
}

template {
  source = "/etc/nginx/conf.d/api_gateway.conf.ctmpl"
  destination = "/etc/nginx/conf.d/api_gateway.conf"
  perms = 0600
  //  command = "nginx -s reload"
}