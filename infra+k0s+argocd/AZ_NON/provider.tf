terraform {
    required_providers {
        openstack = {
            source  = "terraform-provider-openstack/openstack"
            version = "~> 3.0.0"
        }
        kubernetes = { 
            source = "hashicorp/kubernetes", 
            version = "~> 2.30" 
        }
        helm = { 
            source = "hashicorp/helm",       
            version = "~> 2.13" 
        }
        k0s = {
            source  = "bosmak/k0s"
            version = "~> 0.6"
        }
        time = { 
            source = "hashicorp/time",       
            version = "~> 0.11" 
        }
    }
}

provider "openstack" {
    user_name           = ""
    tenant_name         = ""
    domain_name         = ""
    password            = ""
    auth_url            = ""
    region              = ""
}

provider "k0s" {}

provider "kubernetes" {
  config_path = "${path.module}/config/kubeconfig.yaml"
}

provider "helm" {
  kubernetes {
    config_path = "${path.module}/config/kubeconfig.yaml"
  }
}