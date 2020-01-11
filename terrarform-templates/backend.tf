terraform {
    backend "s3" {
        bucket = "k8s--state-storage"
        key = "terraform/dev-workshop-env"
        region = "us-west-2"
    }
}