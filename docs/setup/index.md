## Creating the prerequisites

### Azure Subscriptions
I needed a method to organize my Azure subscriptions, and create a specific workspace for this experiment. I have two main subscriptions, one basic Azure Plan and one student subscription, which saves me money but I can't add subscriptions with that sub as the root tenant.

So, I create a management group in my main subscription, and added two more subs, one for prod and one for non prod.

#### Management Group Structure
Tenant Root Group
- 3MN Root MG
    - SMN Story MG
        - 3mn-nprod sub
        - 3mn-prod sub
        
So, when I have to create resources to subscriptions, I have the following 2 ready to go:
```
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "<same value-60>",
    "id": "<diff-value-f4>",
    "isDefault": false,
    "managedByTenants": [],
    "name": "3mn-prod",
    "state": "Enabled",
    "tenantId": "<same value-60>",
    "user": {
      "name": "<my-username>",
      "type": "user"
    }
  },
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "<same value-60>",
    "id": "<diff-value-37>",
    "isDefault": false,
    "managedByTenants": [],
    "name": "3mn-nprod",
    "state": "Enabled",
    "tenantId": "<same value-60>",
    "user": {
      "name": "<my-username>",
      "type": "user"
    }
  }
```

### Register Github Actions as authorized app for azure
[using a service principal](https://docs.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Cwindows#create-an-azure-active-directory-application-and-service-principal)

### Register Azure DevOps as authorized app for azure
Same as above, I have these from previous work tied to my main tenant.