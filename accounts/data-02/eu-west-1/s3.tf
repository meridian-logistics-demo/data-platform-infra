# S3 buckets in data-02, eu-west-1.

resource "aws_s3_bucket" "data02_raw_zone_01" {
  bucket = "data02-raw-zone-01"
  tags   = {
    Name               = "data02-raw zone 01"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "raw"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_01" {
  bucket = aws_s3_bucket.data02_raw_zone_01.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_01" {
  bucket                  = aws_s3_bucket.data02_raw_zone_01.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_01" {
  bucket = aws_s3_bucket.data02_raw_zone_01.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_01" {
  bucket = aws_s3_bucket.data02_raw_zone_01.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_raw_zone_01" {
  bucket        = aws_s3_bucket.data02_raw_zone_01.id
  target_bucket = "audit-logs"
  target_prefix = "data02-raw-zone-01/"
}

resource "aws_s3_bucket" "data02_euw1_raw_zone_01" {
  bucket = "data02-euw1-raw-zone-01"
  tags   = {
    Name               = "data02-euw1-raw zone 01"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "euw1"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_raw_zone_01" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_01.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_raw_zone_01" {
  bucket                  = aws_s3_bucket.data02_euw1_raw_zone_01.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_raw_zone_01" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_01.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_raw_zone_01" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_01.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_raw_zone_01_02" {
  bucket = "data02-raw-zone-01-02"
  tags   = {
    Name        = "data02-raw zone 01-02"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "raw"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_01_02" {
  bucket = aws_s3_bucket.data02_raw_zone_01_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_01_02" {
  bucket                  = aws_s3_bucket.data02_raw_zone_01_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_01_02" {
  bucket = aws_s3_bucket.data02_raw_zone_01_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket" "data02_raw_zone_02" {
  bucket = "data02-raw-zone-02"
  tags   = {
    Name        = "data02-raw zone 02"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "raw"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_02" {
  bucket = aws_s3_bucket.data02_raw_zone_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_02" {
  bucket                  = aws_s3_bucket.data02_raw_zone_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_02" {
  bucket = aws_s3_bucket.data02_raw_zone_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_02" {
  bucket = aws_s3_bucket.data02_raw_zone_02.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_raw_zone_02" {
  bucket        = aws_s3_bucket.data02_raw_zone_02.id
  target_bucket = "audit-logs"
  target_prefix = "data02-raw-zone-02/"
}

resource "aws_s3_bucket" "data02_euw1_raw_zone_02" {
  bucket = "data02-euw1-raw-zone-02"
  tags   = {
    Name               = "data02-euw1-raw zone 02"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "euw1"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_raw_zone_02" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_raw_zone_02" {
  bucket                  = aws_s3_bucket.data02_euw1_raw_zone_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_raw_zone_02" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_raw_zone_02" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_02.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_raw_zone_02" {
  bucket        = aws_s3_bucket.data02_euw1_raw_zone_02.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-raw-zone-02/"
}

resource "aws_s3_bucket" "data02_raw_zone_02_02" {
  bucket = "data02-raw-zone-02-02"
  tags   = {
    Name               = "data02-raw zone 02-02"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "raw"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_02_02" {
  bucket = aws_s3_bucket.data02_raw_zone_02_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_02_02" {
  bucket                  = aws_s3_bucket.data02_raw_zone_02_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_02_02" {
  bucket = aws_s3_bucket.data02_raw_zone_02_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_raw_zone_02_02" {
  bucket        = aws_s3_bucket.data02_raw_zone_02_02.id
  target_bucket = "audit-logs"
  target_prefix = "data02-raw-zone-02-02/"
}

resource "aws_s3_bucket" "data02_raw_zone_03" {
  bucket = "data02-raw-zone-03"
  tags   = {
    Name        = "data02-raw zone 03"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "raw"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_03" {
  bucket = aws_s3_bucket.data02_raw_zone_03.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_03" {
  bucket                  = aws_s3_bucket.data02_raw_zone_03.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_03" {
  bucket = aws_s3_bucket.data02_raw_zone_03.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_03" {
  bucket = aws_s3_bucket.data02_raw_zone_03.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_raw_zone_03" {
  bucket = "data02-euw1-raw-zone-03"
  tags   = {
    Name        = "data02-euw1-raw zone 03"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_raw_zone_03" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_03.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_raw_zone_03" {
  bucket                  = aws_s3_bucket.data02_euw1_raw_zone_03.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_raw_zone_03" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_03.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_raw_zone_03" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_03.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_raw_zone_03" {
  bucket        = aws_s3_bucket.data02_euw1_raw_zone_03.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-raw-zone-03/"
}

resource "aws_s3_bucket" "data02_raw_zone_03_02" {
  bucket = "data02-raw-zone-03-02"
  tags   = {
    Name               = "data02-raw zone 03-02"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "raw"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_03_02" {
  bucket = aws_s3_bucket.data02_raw_zone_03_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_03_02" {
  bucket                  = aws_s3_bucket.data02_raw_zone_03_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_03_02" {
  bucket = aws_s3_bucket.data02_raw_zone_03_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_03_02" {
  bucket = aws_s3_bucket.data02_raw_zone_03_02.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_raw_zone_04" {
  bucket = "data02-raw-zone-04"
  tags   = {
    Name               = "data02-raw zone 04"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "raw"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_04" {
  bucket = aws_s3_bucket.data02_raw_zone_04.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_04" {
  bucket                  = aws_s3_bucket.data02_raw_zone_04.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_04" {
  bucket = aws_s3_bucket.data02_raw_zone_04.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_04" {
  bucket = aws_s3_bucket.data02_raw_zone_04.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_raw_zone_04" {
  bucket = "data02-euw1-raw-zone-04"
  tags   = {
    Name               = "data02-euw1-raw zone 04"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "euw1"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_raw_zone_04" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_04.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_raw_zone_04" {
  bucket                  = aws_s3_bucket.data02_euw1_raw_zone_04.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_raw_zone_04" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_04.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket" "data02_raw_zone_04_02" {
  bucket = "data02-raw-zone-04-02"
  tags   = {
    Name               = "data02-raw zone 04-02"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "raw"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_04_02" {
  bucket = aws_s3_bucket.data02_raw_zone_04_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_04_02" {
  bucket                  = aws_s3_bucket.data02_raw_zone_04_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_04_02" {
  bucket = aws_s3_bucket.data02_raw_zone_04_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_04_02" {
  bucket = aws_s3_bucket.data02_raw_zone_04_02.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_raw_zone_05" {
  bucket = "data02-raw-zone-05"
  tags   = {
    Name               = "data02-raw zone 05"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "raw"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_05" {
  bucket = aws_s3_bucket.data02_raw_zone_05.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_05" {
  bucket                  = aws_s3_bucket.data02_raw_zone_05.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_05" {
  bucket = aws_s3_bucket.data02_raw_zone_05.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_05" {
  bucket = aws_s3_bucket.data02_raw_zone_05.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_raw_zone_05" {
  bucket        = aws_s3_bucket.data02_raw_zone_05.id
  target_bucket = "audit-logs"
  target_prefix = "data02-raw-zone-05/"
}

resource "aws_s3_bucket" "data02_euw1_raw_zone_05" {
  bucket = "data02-euw1-raw-zone-05"
  tags   = {
    Name               = "data02-euw1-raw zone 05"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "euw1"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_raw_zone_05" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_05.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_raw_zone_05" {
  bucket                  = aws_s3_bucket.data02_euw1_raw_zone_05.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_raw_zone_05" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_05.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_raw_zone_05" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_05.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_raw_zone_05_02" {
  bucket = "data02-raw-zone-05-02"
  tags   = {
    Name        = "data02-raw zone 05-02"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "raw"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_05_02" {
  bucket = aws_s3_bucket.data02_raw_zone_05_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_05_02" {
  bucket                  = aws_s3_bucket.data02_raw_zone_05_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_05_02" {
  bucket = aws_s3_bucket.data02_raw_zone_05_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_raw_zone_05_02" {
  bucket        = aws_s3_bucket.data02_raw_zone_05_02.id
  target_bucket = "audit-logs"
  target_prefix = "data02-raw-zone-05-02/"
}

resource "aws_s3_bucket" "data02_raw_zone_06" {
  bucket = "data02-raw-zone-06"
  tags   = {
    Name        = "data02-raw zone 06"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "raw"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_06" {
  bucket = aws_s3_bucket.data02_raw_zone_06.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_06" {
  bucket                  = aws_s3_bucket.data02_raw_zone_06.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_06" {
  bucket = aws_s3_bucket.data02_raw_zone_06.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_06" {
  bucket = aws_s3_bucket.data02_raw_zone_06.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_raw_zone_06" {
  bucket = "data02-euw1-raw-zone-06"
  tags   = {
    Name        = "data02-euw1-raw zone 06"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_raw_zone_06" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_06.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_raw_zone_06" {
  bucket                  = aws_s3_bucket.data02_euw1_raw_zone_06.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_raw_zone_06" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_06.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_raw_zone_06" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_06.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_raw_zone_06_02" {
  bucket = "data02-raw-zone-06-02"
  tags   = {
    Name               = "data02-raw zone 06-02"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "raw"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_06_02" {
  bucket = aws_s3_bucket.data02_raw_zone_06_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_06_02" {
  bucket                  = aws_s3_bucket.data02_raw_zone_06_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_06_02" {
  bucket = aws_s3_bucket.data02_raw_zone_06_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_06_02" {
  bucket = aws_s3_bucket.data02_raw_zone_06_02.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_raw_zone_06_02" {
  bucket        = aws_s3_bucket.data02_raw_zone_06_02.id
  target_bucket = "audit-logs"
  target_prefix = "data02-raw-zone-06-02/"
}

resource "aws_s3_bucket" "data02_raw_zone_07" {
  bucket = "data02-raw-zone-07"
  tags   = {
    Name        = "data02-raw zone 07"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "raw"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_raw_zone_07" {
  bucket = aws_s3_bucket.data02_raw_zone_07.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_raw_zone_07" {
  bucket                  = aws_s3_bucket.data02_raw_zone_07.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_raw_zone_07" {
  bucket = aws_s3_bucket.data02_raw_zone_07.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_raw_zone_07" {
  bucket = aws_s3_bucket.data02_raw_zone_07.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_raw_zone_07" {
  bucket = "data02-euw1-raw-zone-07"
  tags   = {
    Name               = "data02-euw1-raw zone 07"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "euw1"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_raw_zone_07" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_07.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_raw_zone_07" {
  bucket                  = aws_s3_bucket.data02_euw1_raw_zone_07.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_raw_zone_07" {
  bucket = aws_s3_bucket.data02_euw1_raw_zone_07.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket" "data02_curated_zone_07" {
  bucket = "data02-curated-zone-07"
  tags   = {
    Name        = "data02-curated zone 07"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "curated"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_07" {
  bucket = aws_s3_bucket.data02_curated_zone_07.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_07" {
  bucket                  = aws_s3_bucket.data02_curated_zone_07.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_07" {
  bucket = aws_s3_bucket.data02_curated_zone_07.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_07" {
  bucket = aws_s3_bucket.data02_curated_zone_07.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_curated_zone_07" {
  bucket        = aws_s3_bucket.data02_curated_zone_07.id
  target_bucket = "audit-logs"
  target_prefix = "data02-curated-zone-07/"
}

resource "aws_s3_bucket" "data02_curated_zone_08" {
  bucket = "data02-curated-zone-08"
  tags   = {
    Name        = "data02-curated zone 08"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "curated"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_08" {
  bucket = aws_s3_bucket.data02_curated_zone_08.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_08" {
  bucket                  = aws_s3_bucket.data02_curated_zone_08.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_08" {
  bucket = aws_s3_bucket.data02_curated_zone_08.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_08" {
  bucket = aws_s3_bucket.data02_curated_zone_08.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_curated_zone_08" {
  bucket = "data02-euw1-curated-zone-08"
  tags   = {
    Name               = "data02-euw1-curated zone 08"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "euw1"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_curated_zone_08" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_08.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_curated_zone_08" {
  bucket                  = aws_s3_bucket.data02_euw1_curated_zone_08.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_curated_zone_08" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_08.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_curated_zone_08" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_08.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_curated_zone_08" {
  bucket        = aws_s3_bucket.data02_euw1_curated_zone_08.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-curated-zone-08/"
}

resource "aws_s3_bucket" "data02_cur_zone_08" {
  bucket = "data02-cur-zone-08"
  tags   = {
    Name        = "data02-cur-zone-08"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "cur"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_cur_zone_08" {
  bucket = aws_s3_bucket.data02_cur_zone_08.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_cur_zone_08" {
  bucket                  = aws_s3_bucket.data02_cur_zone_08.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_cur_zone_08" {
  bucket = aws_s3_bucket.data02_cur_zone_08.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_versioning" "data02_cur_zone_08" {
  bucket = aws_s3_bucket.data02_cur_zone_08.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_curated_zone_09" {
  bucket = "data02-curated-zone-09"
  tags   = {
    Name        = "data02-curated zone 09"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "curated"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_09" {
  bucket = aws_s3_bucket.data02_curated_zone_09.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_09" {
  bucket                  = aws_s3_bucket.data02_curated_zone_09.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_09" {
  bucket = aws_s3_bucket.data02_curated_zone_09.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_09" {
  bucket = aws_s3_bucket.data02_curated_zone_09.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_curated_zone_09" {
  bucket        = aws_s3_bucket.data02_curated_zone_09.id
  target_bucket = "audit-logs"
  target_prefix = "data02-curated-zone-09/"
}

resource "aws_s3_bucket" "data02_euw1_curated_zone_09" {
  bucket = "data02-euw1-curated-zone-09"
  tags   = {
    Name        = "data02-euw1-curated zone 09"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_curated_zone_09" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_09.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_curated_zone_09" {
  bucket                  = aws_s3_bucket.data02_euw1_curated_zone_09.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_curated_zone_09" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_09.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_curated_zone_09" {
  bucket        = aws_s3_bucket.data02_euw1_curated_zone_09.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-curated-zone-09/"
}

resource "aws_s3_bucket" "data02_cur_zone_09" {
  bucket = "data02-cur-zone-09"
  tags   = {
    Name               = "data02-cur-zone-09"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "cur"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_cur_zone_09" {
  bucket = aws_s3_bucket.data02_cur_zone_09.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_cur_zone_09" {
  bucket                  = aws_s3_bucket.data02_cur_zone_09.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_cur_zone_09" {
  bucket = aws_s3_bucket.data02_cur_zone_09.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_logging" "data02_cur_zone_09" {
  bucket        = aws_s3_bucket.data02_cur_zone_09.id
  target_bucket = "audit-logs"
  target_prefix = "data02-cur-zone-09/"
}

resource "aws_s3_bucket" "data02_curated_zone_10" {
  bucket = "data02-curated-zone-10"
  tags   = {
    Name        = "data02-curated zone 10"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "curated"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_10" {
  bucket = aws_s3_bucket.data02_curated_zone_10.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_10" {
  bucket                  = aws_s3_bucket.data02_curated_zone_10.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_10" {
  bucket = aws_s3_bucket.data02_curated_zone_10.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_10" {
  bucket = aws_s3_bucket.data02_curated_zone_10.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_curated_zone_10" {
  bucket = "data02-euw1-curated-zone-10"
  tags   = {
    Name        = "data02-euw1-curated zone 10"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_curated_zone_10" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_10.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_curated_zone_10" {
  bucket                  = aws_s3_bucket.data02_euw1_curated_zone_10.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_curated_zone_10" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_10.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_curated_zone_10" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_10.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_curated_zone_10" {
  bucket        = aws_s3_bucket.data02_euw1_curated_zone_10.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-curated-zone-10/"
}

resource "aws_s3_bucket" "data02_cur_zone_10" {
  bucket = "data02-cur-zone-10"
  tags   = {
    Name        = "data02-cur-zone-10"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "cur"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_cur_zone_10" {
  bucket = aws_s3_bucket.data02_cur_zone_10.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_cur_zone_10" {
  bucket                  = aws_s3_bucket.data02_cur_zone_10.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_cur_zone_10" {
  bucket = aws_s3_bucket.data02_cur_zone_10.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_versioning" "data02_cur_zone_10" {
  bucket = aws_s3_bucket.data02_cur_zone_10.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_curated_zone_11" {
  bucket = "data02-curated-zone-11"
  tags   = {
    Name        = "data02-curated zone 11"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "curated"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_11" {
  bucket = aws_s3_bucket.data02_curated_zone_11.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_11" {
  bucket                  = aws_s3_bucket.data02_curated_zone_11.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_11" {
  bucket = aws_s3_bucket.data02_curated_zone_11.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_11" {
  bucket = aws_s3_bucket.data02_curated_zone_11.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_curated_zone_11" {
  bucket = "data02-euw1-curated-zone-11"
  tags   = {
    Name               = "data02-euw1-curated zone 11"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "euw1"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_curated_zone_11" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_11.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_curated_zone_11" {
  bucket                  = aws_s3_bucket.data02_euw1_curated_zone_11.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_curated_zone_11" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_11.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_curated_zone_11" {
  bucket        = aws_s3_bucket.data02_euw1_curated_zone_11.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-curated-zone-11/"
}

resource "aws_s3_bucket" "data02_cur_zone_11" {
  bucket = "data02-cur-zone-11"
  tags   = {
    Name        = "data02-cur-zone-11"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "cur"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_cur_zone_11" {
  bucket = aws_s3_bucket.data02_cur_zone_11.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_cur_zone_11" {
  bucket                  = aws_s3_bucket.data02_cur_zone_11.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_cur_zone_11" {
  bucket = aws_s3_bucket.data02_cur_zone_11.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_cur_zone_11" {
  bucket        = aws_s3_bucket.data02_cur_zone_11.id
  target_bucket = "audit-logs"
  target_prefix = "data02-cur-zone-11/"
}

resource "aws_s3_bucket" "data02_curated_zone_12" {
  bucket = "data02-curated-zone-12"
  tags   = {
    Name        = "data02-curated zone 12"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "curated"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_12" {
  bucket = aws_s3_bucket.data02_curated_zone_12.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_12" {
  bucket                  = aws_s3_bucket.data02_curated_zone_12.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_12" {
  bucket = aws_s3_bucket.data02_curated_zone_12.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_12" {
  bucket = aws_s3_bucket.data02_curated_zone_12.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_curated_zone_12" {
  bucket        = aws_s3_bucket.data02_curated_zone_12.id
  target_bucket = "audit-logs"
  target_prefix = "data02-curated-zone-12/"
}

resource "aws_s3_bucket" "data02_euw1_curated_zone_12" {
  bucket = "data02-euw1-curated-zone-12"
  tags   = {
    Name        = "data02-euw1-curated zone 12"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_curated_zone_12" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_12.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_curated_zone_12" {
  bucket                  = aws_s3_bucket.data02_euw1_curated_zone_12.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_curated_zone_12" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_12.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_curated_zone_12" {
  bucket        = aws_s3_bucket.data02_euw1_curated_zone_12.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-curated-zone-12/"
}

resource "aws_s3_bucket" "data02_cur_zone_12" {
  bucket = "data02-cur-zone-12"
  tags   = {
    Name        = "data02-cur-zone-12"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "cur"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_cur_zone_12" {
  bucket = aws_s3_bucket.data02_cur_zone_12.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_cur_zone_12" {
  bucket                  = aws_s3_bucket.data02_cur_zone_12.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_cur_zone_12" {
  bucket = aws_s3_bucket.data02_cur_zone_12.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_cur_zone_12" {
  bucket = aws_s3_bucket.data02_cur_zone_12.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_curated_zone_13" {
  bucket = "data02-curated-zone-13"
  tags   = {
    Name               = "data02-curated zone 13"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "curated"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_13" {
  bucket = aws_s3_bucket.data02_curated_zone_13.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_13" {
  bucket                  = aws_s3_bucket.data02_curated_zone_13.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_13" {
  bucket = aws_s3_bucket.data02_curated_zone_13.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_13" {
  bucket = aws_s3_bucket.data02_curated_zone_13.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_curated_zone_13" {
  bucket        = aws_s3_bucket.data02_curated_zone_13.id
  target_bucket = "audit-logs"
  target_prefix = "data02-curated-zone-13/"
}

resource "aws_s3_bucket" "data02_euw1_curated_zone_13" {
  bucket = "data02-euw1-curated-zone-13"
  tags   = {
    Name        = "data02-euw1-curated zone 13"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_curated_zone_13" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_13.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_curated_zone_13" {
  bucket                  = aws_s3_bucket.data02_euw1_curated_zone_13.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_curated_zone_13" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_13.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_curated_zone_13" {
  bucket = aws_s3_bucket.data02_euw1_curated_zone_13.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_curated_zone_13" {
  bucket        = aws_s3_bucket.data02_euw1_curated_zone_13.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-curated-zone-13/"
}

resource "aws_s3_bucket" "data02_cur_zone_13" {
  bucket = "data02-cur-zone-13"
  tags   = {
    Name               = "data02-cur-zone-13"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "cur"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_cur_zone_13" {
  bucket = aws_s3_bucket.data02_cur_zone_13.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_cur_zone_13" {
  bucket                  = aws_s3_bucket.data02_cur_zone_13.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_cur_zone_13" {
  bucket = aws_s3_bucket.data02_cur_zone_13.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_cur_zone_13" {
  bucket = aws_s3_bucket.data02_cur_zone_13.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_cur_zone_13" {
  bucket        = aws_s3_bucket.data02_cur_zone_13.id
  target_bucket = "audit-logs"
  target_prefix = "data02-cur-zone-13/"
}

resource "aws_s3_bucket" "data02_curated_zone_14" {
  bucket = "data02-curated-zone-14"
  tags   = {
    Name               = "data02-curated zone 14"
    Environment        = "production"
    Team               = "data-platform"
    CostCenter         = "CC-3400"
    Application        = "curated"
    Owner              = "data-platform@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_curated_zone_14" {
  bucket = aws_s3_bucket.data02_curated_zone_14.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_curated_zone_14" {
  bucket                  = aws_s3_bucket.data02_curated_zone_14.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_curated_zone_14" {
  bucket = aws_s3_bucket.data02_curated_zone_14.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_curated_zone_14" {
  bucket = aws_s3_bucket.data02_curated_zone_14.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_published_zone_14" {
  bucket = "data02-published-zone-14"
  tags   = {
    Name        = "data02-published zone 14"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "published"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_published_zone_14" {
  bucket = aws_s3_bucket.data02_published_zone_14.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_published_zone_14" {
  bucket                  = aws_s3_bucket.data02_published_zone_14.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_published_zone_14" {
  bucket = aws_s3_bucket.data02_published_zone_14.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_published_zone_14" {
  bucket = aws_s3_bucket.data02_published_zone_14.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_euw1_published_zone_14" {
  bucket = "data02-euw1-published-zone-14"
  tags   = {
    Name        = "data02-euw1-published zone 14"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_published_zone_14" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_14.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_published_zone_14" {
  bucket                  = aws_s3_bucket.data02_euw1_published_zone_14.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_published_zone_14" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_14.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_published_zone_14" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_14.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_published_zone_15" {
  bucket = "data02-published-zone-15"
  tags   = {
    Name        = "data02-published zone 15"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "published"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_published_zone_15" {
  bucket = aws_s3_bucket.data02_published_zone_15.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_published_zone_15" {
  bucket                  = aws_s3_bucket.data02_published_zone_15.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_published_zone_15" {
  bucket = aws_s3_bucket.data02_published_zone_15.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_versioning" "data02_published_zone_15" {
  bucket = aws_s3_bucket.data02_published_zone_15.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_published_zone_15" {
  bucket        = aws_s3_bucket.data02_published_zone_15.id
  target_bucket = "audit-logs"
  target_prefix = "data02-published-zone-15/"
}

resource "aws_s3_bucket" "data02_euw1_published_zone_15" {
  bucket = "data02-euw1-published-zone-15"
  tags   = {
    Name        = "data02-euw1-published zone 15"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_published_zone_15" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_15.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_published_zone_15" {
  bucket                  = aws_s3_bucket.data02_euw1_published_zone_15.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_published_zone_15" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_15.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_published_zone_15" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_15.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_pub_zone_15" {
  bucket = "data02-pub-zone-15"
  tags   = {
    Name        = "data02-pub-zone-15"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "pub"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_pub_zone_15" {
  bucket = aws_s3_bucket.data02_pub_zone_15.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_pub_zone_15" {
  bucket                  = aws_s3_bucket.data02_pub_zone_15.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_pub_zone_15" {
  bucket = aws_s3_bucket.data02_pub_zone_15.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_pub_zone_15" {
  bucket = aws_s3_bucket.data02_pub_zone_15.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_published_zone_16" {
  bucket = "data02-published-zone-16"
  tags   = {
    Name        = "data02-published zone 16"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "published"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_published_zone_16" {
  bucket = aws_s3_bucket.data02_published_zone_16.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_published_zone_16" {
  bucket                  = aws_s3_bucket.data02_published_zone_16.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_published_zone_16" {
  bucket = aws_s3_bucket.data02_published_zone_16.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_published_zone_16" {
  bucket = aws_s3_bucket.data02_published_zone_16.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_published_zone_16" {
  bucket        = aws_s3_bucket.data02_published_zone_16.id
  target_bucket = "audit-logs"
  target_prefix = "data02-published-zone-16/"
}

resource "aws_s3_bucket" "data02_euw1_published_zone_16" {
  bucket = "data02-euw1-published-zone-16"
  tags   = {
    Name        = "data02-euw1-published zone 16"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_published_zone_16" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_16.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_published_zone_16" {
  bucket                  = aws_s3_bucket.data02_euw1_published_zone_16.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_published_zone_16" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_16.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_published_zone_16" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_16.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_published_zone_16" {
  bucket        = aws_s3_bucket.data02_euw1_published_zone_16.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-published-zone-16/"
}

resource "aws_s3_bucket" "data02_pub_zone_16" {
  bucket = "data02-pub-zone-16"
  tags   = {
    Name        = "data02-pub-zone-16"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "pub"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_pub_zone_16" {
  bucket = aws_s3_bucket.data02_pub_zone_16.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_pub_zone_16" {
  bucket                  = aws_s3_bucket.data02_pub_zone_16.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_pub_zone_16" {
  bucket = aws_s3_bucket.data02_pub_zone_16.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_pub_zone_16" {
  bucket = aws_s3_bucket.data02_pub_zone_16.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_published_zone_17" {
  bucket = "data02-published-zone-17"
  tags   = {
    Name        = "data02-published zone 17"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "published"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_published_zone_17" {
  bucket = aws_s3_bucket.data02_published_zone_17.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_published_zone_17" {
  bucket                  = aws_s3_bucket.data02_published_zone_17.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_published_zone_17" {
  bucket = aws_s3_bucket.data02_published_zone_17.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket" "data02_euw1_published_zone_17" {
  bucket = "data02-euw1-published-zone-17"
  tags   = {
    Name        = "data02-euw1-published zone 17"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_published_zone_17" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_17.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_published_zone_17" {
  bucket                  = aws_s3_bucket.data02_euw1_published_zone_17.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_published_zone_17" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_17.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_published_zone_17" {
  bucket        = aws_s3_bucket.data02_euw1_published_zone_17.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-published-zone-17/"
}

resource "aws_s3_bucket" "data02_pub_zone_17" {
  bucket = "data02-pub-zone-17"
  tags   = {
    Name        = "data02-pub-zone-17"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "pub"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_pub_zone_17" {
  bucket = aws_s3_bucket.data02_pub_zone_17.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_pub_zone_17" {
  bucket                  = aws_s3_bucket.data02_pub_zone_17.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_pub_zone_17" {
  bucket = aws_s3_bucket.data02_pub_zone_17.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket" "data02_published_zone_18" {
  bucket = "data02-published-zone-18"
  tags   = {
    Name        = "data02-published zone 18"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "published"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_published_zone_18" {
  bucket = aws_s3_bucket.data02_published_zone_18.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_published_zone_18" {
  bucket                  = aws_s3_bucket.data02_published_zone_18.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_published_zone_18" {
  bucket = aws_s3_bucket.data02_published_zone_18.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_published_zone_18" {
  bucket        = aws_s3_bucket.data02_published_zone_18.id
  target_bucket = "audit-logs"
  target_prefix = "data02-published-zone-18/"
}

resource "aws_s3_bucket" "data02_euw1_published_zone_18" {
  bucket = "data02-euw1-published-zone-18"
  tags   = {
    Name        = "data02-euw1-published zone 18"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_published_zone_18" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_18.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_published_zone_18" {
  bucket                  = aws_s3_bucket.data02_euw1_published_zone_18.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_published_zone_18" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_18.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_published_zone_18" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_18.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_published_zone_18" {
  bucket        = aws_s3_bucket.data02_euw1_published_zone_18.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-published-zone-18/"
}

resource "aws_s3_bucket" "data02_pub_zone_18" {
  bucket = "data02-pub-zone-18"
  tags   = {
    Name        = "data02-pub-zone-18"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "pub"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_pub_zone_18" {
  bucket = aws_s3_bucket.data02_pub_zone_18.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_pub_zone_18" {
  bucket                  = aws_s3_bucket.data02_pub_zone_18.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_pub_zone_18" {
  bucket = aws_s3_bucket.data02_pub_zone_18.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_pub_zone_18" {
  bucket = aws_s3_bucket.data02_pub_zone_18.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "data02_published_zone_19" {
  bucket = "data02-published-zone-19"
  tags   = {
    Name        = "data02-published zone 19"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "published"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_published_zone_19" {
  bucket = aws_s3_bucket.data02_published_zone_19.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_published_zone_19" {
  bucket                  = aws_s3_bucket.data02_published_zone_19.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_published_zone_19" {
  bucket = aws_s3_bucket.data02_published_zone_19.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_published_zone_19" {
  bucket        = aws_s3_bucket.data02_published_zone_19.id
  target_bucket = "audit-logs"
  target_prefix = "data02-published-zone-19/"
}

resource "aws_s3_bucket" "data02_euw1_published_zone_19" {
  bucket = "data02-euw1-published-zone-19"
  tags   = {
    Name        = "data02-euw1-published zone 19"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_published_zone_19" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_19.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_published_zone_19" {
  bucket                  = aws_s3_bucket.data02_euw1_published_zone_19.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_published_zone_19" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_19.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_published_zone_19" {
  bucket        = aws_s3_bucket.data02_euw1_published_zone_19.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-published-zone-19/"
}

resource "aws_s3_bucket" "data02_pub_zone_19" {
  bucket = "data02-pub-zone-19"
  tags   = {
    Name        = "data02-pub-zone-19"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "pub"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_pub_zone_19" {
  bucket = aws_s3_bucket.data02_pub_zone_19.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_pub_zone_19" {
  bucket                  = aws_s3_bucket.data02_pub_zone_19.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_pub_zone_19" {
  bucket = aws_s3_bucket.data02_pub_zone_19.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_logging" "data02_pub_zone_19" {
  bucket        = aws_s3_bucket.data02_pub_zone_19.id
  target_bucket = "audit-logs"
  target_prefix = "data02-pub-zone-19/"
}

resource "aws_s3_bucket" "data02_published_zone_20" {
  bucket = "data02-published-zone-20"
  tags   = {
    Name        = "data02-published zone 20"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "published"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_published_zone_20" {
  bucket = aws_s3_bucket.data02_published_zone_20.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_published_zone_20" {
  bucket                  = aws_s3_bucket.data02_published_zone_20.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_published_zone_20" {
  bucket = aws_s3_bucket.data02_published_zone_20.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_published_zone_20" {
  bucket = aws_s3_bucket.data02_published_zone_20.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_published_zone_20" {
  bucket        = aws_s3_bucket.data02_published_zone_20.id
  target_bucket = "audit-logs"
  target_prefix = "data02-published-zone-20/"
}

resource "aws_s3_bucket" "data02_euw1_published_zone_20" {
  bucket = "data02-euw1-published-zone-20"
  tags   = {
    Name        = "data02-euw1-published zone 20"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "euw1"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_euw1_published_zone_20" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_20.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_euw1_published_zone_20" {
  bucket                  = aws_s3_bucket.data02_euw1_published_zone_20.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_euw1_published_zone_20" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_20.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_euw1_published_zone_20" {
  bucket = aws_s3_bucket.data02_euw1_published_zone_20.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "data02_euw1_published_zone_20" {
  bucket        = aws_s3_bucket.data02_euw1_published_zone_20.id
  target_bucket = "audit-logs"
  target_prefix = "data02-euw1-published-zone-20/"
}

resource "aws_s3_bucket" "data02_pub_zone_20" {
  bucket = "data02-pub-zone-20"
  tags   = {
    Name        = "data02-pub-zone-20"
    Environment = "production"
    Team        = "data-platform"
    CostCenter  = "CC-3400"
    Application = "pub"
    Owner       = "data-platform@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "data02_pub_zone_20" {
  bucket = aws_s3_bucket.data02_pub_zone_20.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "data02_pub_zone_20" {
  bucket                  = aws_s3_bucket.data02_pub_zone_20.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data02_pub_zone_20" {
  bucket = aws_s3_bucket.data02_pub_zone_20.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_versioning" "data02_pub_zone_20" {
  bucket = aws_s3_bucket.data02_pub_zone_20.id
  versioning_configuration {
    status = "Enabled"
  }
}
