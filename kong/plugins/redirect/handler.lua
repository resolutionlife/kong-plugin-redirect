local plugin = {
    PRIORITY = 3000,
    VERSION = "0.1.0",
  }

function plugin:access(conf)
    local status_code     = conf.status_code
    local request_uri     = conf.request_uri
    local response_uri    = conf.response_uri
    if ngx.var.request_uri == request_uri then
        return ngx.redirect(response_uri, status_code)
    end
end

return plugin
