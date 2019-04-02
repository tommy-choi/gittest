terraform { 
  backend "s3" { 
    bucket= "terraform-state-nowage1"
    key = "terraform/demo4"
  } 
} 
