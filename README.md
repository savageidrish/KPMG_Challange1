# KPMG Challenge-1
## Creation of 3-tier application using Terraform



[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

I have created 3-tier application in Azure using Terraform. Three modules are created for each tier.

![alt text](https://github.com/savageidrish/KPMG_Challange1/blob/main/Architecture-Diagram.PNG)


## Tier-1
Tier-1 (web tier) consist of following Azure resources -
- Subnet for web tier
- Public Load Balancer
- 2 VM's in Availability set for HA
- NSG to allow inbound traffic to VM's

## Tier-2
Tier-2 (app tier) consist of following Azure resources -
- Subnet for app tier
- Private Load Balancer
- 2 VM's in Availability set for HA
- NSG to allow inbound traffic to VM's

## Tier-3
Tier-3 (DB tier) consist of following Azure resources -
- Azure SQL server
- Azure SQL Database
- Private Endpoint to connect DB server with app-tier VM's

