variable "timeout" {
    type    = number
    default = 3
}

variable "domain_name" {
    type    = string
    default = "{{cookiecutter.domain_name}}"
}

variable "project_name" {
    type    = string
    default = "{{cookiecutter.project_name}}"
}

variable "account" {
    type    = string
    default = "{{cookiecutter.aws_account_id}}"
}

variable "region" {
    type    = string
    default = "{{cookiecutter.aws_region}}"
}

variable "eventbus_name" {
    type    = string
    default = "{{cookiecutter.eventbus_name}}"
}

variable "event_type" {
    type    = string
    default = "{{cookiecutter.event_type}}"
}