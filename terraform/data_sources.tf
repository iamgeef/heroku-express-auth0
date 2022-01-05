# Lookup an existing Heroku app
data "heroku_app" "data_default" {
  depends_on = [
    heroku_app.default
  ]
  name = heroku_app.default.name
}
