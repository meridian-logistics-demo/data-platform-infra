provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      ManagedBy = "terraform"
      Repo      = "meridian-logistics-demo/data-platform-infra"
    }
  }
}
