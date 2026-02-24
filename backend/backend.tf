terraform {
    backend "s3" {
       bucket = "terraformbackend-p"
       key = "remote-state.tfstate"
       region = "us-east-1"
       encrypt = true
       use_lockfile = true
    }
}