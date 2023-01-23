# Azure Landing Zone Workshop with Terraform

## Introduction

The Azure landing zones Terraform module is designed to accelerate deployment of platform resources based on the Azure landing zones conceptual architecture using Terraform.

![A conceptual architecture diagram highlighting the design areas covered by the Azure landing zones Terraform module.](./media/alz-tf-module-overview.png)

This is currently split logically into the following capabilities within the module 

| Module capability | Scope | Design area |
| :--- | :--- | :--- |
| Core Resources | Management group and subscription organization | Resource organization |
| Management Resources | Management subscription | Management |
| Connectivity Resources | Connectivity subscription | Network topology and connectivity |
| Identity Resources | Identity subscription | Identity and access management |

Using a very [simple initial configuration](#maintf), the module will deploy a management group hierarchy based on the above diagram.
This includes the recommended governance baseline, applied using Azure Policy and Access control (IAM) resources deployed at the management group scope.
The default configuration can be easily extended to meet differing requirements, and includes the ability to deploy platform resources in the `management` and `connectivity` subscriptions.


## Learning Objectives
This hack will help you learn:
- How Terraform works to deploy infrastructure in Azure
- How Terraform can be used to trigger the install of software on a VM

## Steps
1. [Get your machine ready](./Student/01-prerequisite.md) 
   - Configure Terraform on Linux subsystem, credentials
1. [Terraform remote storage for state files](./Student/readme.md)
   - Create an Azure storage account resource for Terraform 
1. [Deploy the Azure Landing Zone Management Group hierarchy](./Student/readme.md)
   - Lean how to deploy Azure Management Groups and Azure Policy with the terraform module
1. [Deploy the Azure Landing Zone management resources](./Student/readme.md)
   - Learn how to deploy management resources (Log Analytics) with the terraform module
1. [Deploy the Azure Landing Zone connectivity resources](./Student/readme.md)
   - Learn how to deploy connectivity resources (Hub and Spoke) with the terraform module
1. [Deploy the Azure Landing Zone identity resources](./Student/readme.md)
   - Learn how to deploy identity resources with the terraform module

## Prerequisites
- Your own Azure subscription with Owner access
- Visual Studio Code
- Azure CLI
- Terraform

## Repository Contents

- `../Coach/Solutions`
  - Complete solution files for each challenge
- `../Student`
  - Terraform challenges


## Contributors
- Arturo
- Eric Leonard
- James
- Molina

# License
This repository is licensed under MIT license. More info can be found [here](https://github.com/erleonard/alz-terraform-workshop/blob/main/LICENSE).