terrfaorm {
    backend "s3" {
        bucket = "terraform-subash"
        key    = "terraform/dev/helloapp"
        region = "us-east-1"
    }
}