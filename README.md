## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Preparation](#preparation)
* [Setup](#setup)

## General info
This project is simple test terraform template which demonstrates work of load balancer with ec2 instance access and some restrictions for external access from not whitelisted ip addresses
	
## Technologies
Project is created with:
* Terraform v0.12.28
* Provider.Aws v3.8.0
	
## Preparation
Before start please set your CIDR in variables.tf
  
## Setup
To run this project, install it locally using:

```
$ terraform init
$ terraform plan
$ terraform apply
```
