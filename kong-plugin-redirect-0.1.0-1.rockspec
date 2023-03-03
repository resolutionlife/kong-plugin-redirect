package = "kong-plugin-redirect"
version = "0.1.0-1"

supported_platforms = { "linux", "macosx" }

source = {
  url = "git+https://github.com/resolutionlife/kong-plugin-redirect.git",
  tag = "0.1",
}

description = {
  summary = "Kong-plugin-redirect is a custom plugin for kong to redirext URL request.",
  homepage = "https://resolutionlife.github.io/kong-plugin-redirect",
  license = "MIT License",
}

dependencies = {
  "lua >= 5.4",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.redirect.handler"] = "./kong/plugins/redirect/handler.lua",
    ["kong.plugins.redirect.schema"] = "./kong/plugins/redirect/schema.lua",
  }
}
