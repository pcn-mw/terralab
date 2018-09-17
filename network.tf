provider "google" {
  credentials = "/home/paul/credentials.json"
}

module "vpc" {
    source = "github.com/terraform-google-modules/terraform-google-network"
    project_id   = "87223077497"
    network_name = "vpc-1"

    subnets = [
        {
            subnet_name           = "corporateit"
            subnet_ip             = "10.0.0.0/16"
            subnet_region         = "us-central1"
        },
        {
            subnet_name           = "security"
            subnet_ip             = "10.10.0.0/16"
            subnet_region         = "us-central1"
            subnet_private_access = true
            subnet_flow_logs      = true
        },
	{
	    subnet_name		  = "ecommerce"
	    subnet_ip		  = "10.20.0.0/16"
	    subnet_region	  = "us-central1"
	},
	{
	    subnet_name		  = "marketing"
	    subnet_ip		  = "10.30.0.0/16"
	    subnet_region	  = "us-central1"
    ]

    secondary_ranges = {
        corporateit = [
            {
                range_name    = "corporateit-cntr"
                ip_cidr_range = "10.150.1.0/24"
            },
        ]

        security = [
		{
		  range_name = "security-cntr"
		  ip_cidr_range = "10.150.2.0/24"
		},
		]
	ecommerce = [
		{
		range_name = "ecommerce-cntr"
		ip_cidr_range = "10.151.1.0/24"
		},
		]
	marketing = [
	{
		range_name = "marketing-cntr"
		ip_cidr_range - "10.152.1.0/24"
	},
	]
    }
}
