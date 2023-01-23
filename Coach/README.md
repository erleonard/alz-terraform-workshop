Terraform automation utilizes the Azure AD Service Principal for the execution but for this workshop we will be using the authentication through Azure CLI (az login) to simplify things and to limit the need to access Azure AD.

Quicktip
- Create a new document, copy and paste the variables to the document for quick reference.

```
STORAGEACCOUNTNAME=tfstate2833
CONTAINERNAME=hol
TFSTATE_RG=tfstate
```

Known Issues
1. User has not set username or email address for git.  Run the following command
```
git config --global user.name "userexample"
git config --global user.email "email@example.com"
```