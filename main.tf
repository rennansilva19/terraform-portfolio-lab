terraform {
    required_providers {
        local = {
            source  = "hashicorp/local"
            version = "~> 2.0"
        }
    }
}

provider "local" {}

resource "local_file" "teste" {
    filename = "${path.module}/portfolio.txt"
    content  = "Esta alteração veio da minha branch de feature!"
}