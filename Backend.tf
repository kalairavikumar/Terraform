Backend.tf

terraform {
  backend "s3"{
    bucket                 = "Terraformbucket"
    region                 = "us-east-1"
    key                    = "backend.tfstate"
     }
}

