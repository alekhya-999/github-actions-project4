variable "rgname" {
  description = "resource group name"
  default = "webapptf-rg"
}

variable "rglocation" {
  description = "resource group location"
  default = "East US"
}

variable "asp" {

  description = "app service plan name"
  default = "testasp0869"
}

variable "webapp" {

  description = "webapp name"
  default = "testapp9657"
}