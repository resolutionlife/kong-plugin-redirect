local typedefs = require "kong.db.schema.typedefs"
local PLUGIN_NAME = "kong-redirect"

local schema = {
  name = PLUGIN_NAME,
  fields = {
    { consumer = typedefs.no_consumer },
    { protocols = typedefs.protocols_http },

    { config = {
        type = "record",
        fields = {
          { request_uri = typedefs.header_name {
              required = true,
              default = "/resolutionlife/kong-plugin-redirect" } },
          { response_uri = typedefs.header_name {
              required = true,
              default = "github.com/resolutionlife/kong-plugin-redirect" } },
          { status_code = { 
              type = "number",
              default = 301,}},
        },
      },
    },
  },
}
return schema
