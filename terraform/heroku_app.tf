# default app
resource "random_string" "heroku_auth0_sesion_string" {
  length  = 64
  special = false
}

resource "heroku_app" "default" {
  name   = var.heroku_app_name
  region = var.heroku_region

  config_vars = {
    # this is used for the auth0 session config
    SESSION_SECRET = random_string.heroku_auth0_sesion_string.result
  }

  buildpacks = var.heroku_build_pack
}

# auth0 addon
resource "heroku_addon" "auth0" {
  app  = heroku_app.default.name
  plan = "auth0:free"
}

resource "heroku_build" "default" {
  app = heroku_app.default.id

  source {
    path = "../source"
  }
}
