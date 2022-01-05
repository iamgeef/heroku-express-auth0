variable "heroku_email" {
  type = string
}
variable "heroku_api_key" {
  type = string
}

variable "heroku_build_pack" {
  type = list(string)
}

variable "heroku_app_name" {
  type = string
}
variable "heroku_region" {
  type = string
}
