locals {
  event_type_normalized = replace(var.event_type, " ", "-")
}

module "{{cookiecutter.project_name}}_source_to_log_group" {
  source        = "git@github.com:moggiez/terraform-modules.git//eventrules_source_to_log_group"
  application   = var.domain_name
  account       = var.account
  eventbus_name = var.eventbus_name
  event_source  = var.eventbus_name
  log_group     = aws_cloudwatch_log_group._
}

module "event_type_to_lambda" {
  source        = "git@github.com:moggiez/terraform-modules.git//eventrules_detail_type_to_lambda"
  application   = var.domain_name
  name          = "${local.event_type_normalized}-to-${var.project_name}"
  account       = var.account
  region        = var.region
  detail_types  = [var.event_type]
  eventbus_name = var.eventbus_name
  lambda        = module.event_driven_lambda.lambda
}
