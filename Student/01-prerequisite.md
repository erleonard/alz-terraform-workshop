# Prerequisites for ALZ Workshop

This is the starting point for the instructions on deploying the [Azure Landing Zone](../README.md). There is required access and tooling you'll need in order to accomplish this. Follow the instructions below and on the subsequent pages so that you can get your environment ready to proceed with the AKS cluster creation.

## Steps

1. Latest [Azure CLI installed](https://docs.microsoft.com/cli/azure/install-azure-cli?view=azure-cli-latest)
1. An Azure subscription.
1. [Visual Studio Code](https://code.visualstudio.com/docs/setup/setup-overview) installed
1. [Terraform](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/install-cli) cli installed
1. [GitHub Account](https://github.com/), if you do not have one, a free account can be created.

# Configuration

## Sign in with Azure CLI

The Azure CLI's default authentication method for logins uses a web browser and access token to sign in.

Run the **login** command.

```
az login
```
the CLI can open your default browser, it will initiate authorization code flow and open the default browser to load an Azure sign-in page.

Sign in with your account credentials in the browser.

## Set Subscription

Get a list of subscriptions for the logged in account.
```
az account list --output table
```

Set a subscription by name to be the current active subscription
```
az account set --subscription "My Demos"
```
**OR**
Set a subscription by id to be the current active subscription

```Bash
az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
```

## Clone GitHub Repository

```
git clone https://github.com/erleonard/alz-terraform-workshop.git 

# Go to directory
cd alz-terraform-workshop
```

### Next step

:arrow_forward: [Use the Azure CLI to create a storage account to store the Terraform state files](./02-state-storage.md)