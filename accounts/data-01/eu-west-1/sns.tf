# SNS topics in data-01, eu-west-1.

resource "aws_sns_topic" "data01_lake_alerts" {
  name              = "data01-lake-alerts"
  kms_master_key_id = "alias/aws/sns"
  tags = {
    Name        = "data01-lake alerts"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "lake"
    Owner       = "data-platform@meridian-logistics.example"
  }
}
