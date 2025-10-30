terraform {
    required_providers {
        openstack = {
            source  = "terraform-provider-openstack/openstack"
            version = "~> 3.0.0"
        }
        k0s = {
            source  = "bosmak/k0s"   
            version = "~> 0.6"
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