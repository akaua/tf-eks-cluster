terraform {
    backend "s3" {
        bucket = "udacity-akaua-tf-backend"
        key = "github/eks/terraform.tfstate" 
        region = "us-east-1"
    }
}