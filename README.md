# data-platform-infra

Terraform for the data-platform team's AWS resources at Meridian Logistics.

One root per account and region, under `accounts/<account>/<region>/`. State
lives in `s3://meridian-terraform-state/data-platform/<account>/<region>/terraform.tfstate`.

| Account | Region | Buckets |
|---|---|---|
| data-01 | eu-west-1 | 60 |
| data-02 | eu-west-1 | 60 |

Changes go through a pull request. CODEOWNERS asks @meridian-logistics-demo/data-platform to review.

---

<sub>Meridian Logistics is a fictional company. This repository is demo data
made by AlertD; its people, accounts and resources are not real.</sub>
