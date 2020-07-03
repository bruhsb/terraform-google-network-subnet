
#####################################################
#### GENERAL VARIABLES VALUES FOR ALIASED SUBNET ####
#####################################################

name          = "aliased-subnet"
project       = "my_project"
description   = "Aliased Subnet"
network       = google_compute_network.vpc_network.self_link
ip_cidr_range = "10.100.0.0/24"

create_secondary_ranges = true
secondary_ranges = [
  {
    range_name    = "range-1"
    ip_cidr_range = "10.101.0.0/24"
  },
  {
    range_name    = "range-2"
    ip_cidr_range = "10.102.0.0/24"
  },
  {
    range_name    = "range-3"
    ip_cidr_range = "10.103.0.0/28"
  },
]