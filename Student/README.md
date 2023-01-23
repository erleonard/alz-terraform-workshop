# Azure Landing Zone Workstop Steps

## [Prerequisite](./01-prerequisite.md)
Prepare workstation with required software for this workshop.

## [Terraform Remote Storage](./02-state-storage.md)
Configure remote storage for Terraform state files

## [Deploy the Azure Landing Zone Management Group hierarchy](./03-alz-core.md)
This code will deploy the minimum recommended management group and subscription organization from the Azure landing zone conceptual architecture.

## [Deploy the Azure Landing Zone management resources](./04-alz-management.md)
Describes how to deploy your Azure landing zone with the Management resources created in the current Subscription context, using custom configuration settings.

## [Deploy the Azure Landing Zone connectivity resources](./05-alz-connectivity.md)
Describes how to deploy Azure landing zones with connectivity resources based on the Traditional Azure networking topology (hub and spoke) created in the current Subscription context, using custom configuration settings.

## [Deploy the Azure Landing Zone identity resources](./06-alz-identity.md)
Describes how to deploy your Azure landing zone with the Identity resources created in the current Subscription context, using custom configuration settings.