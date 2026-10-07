# SNS topics in data-02, eu-west-1.

resource "aws_sns_topic" "data02_lake_alerts" {
  name = "data02-lake-alerts"
  tags = {
    Name        = "data02-lake alerts"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "lake"
    Owner       = "data-platform@meridian-logistics.example"
  }
}
