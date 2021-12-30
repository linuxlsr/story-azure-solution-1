## Creating the prerequisites

### Azure Subscriptions
Initial effort with management groups was informative but unnecessary for the immediate task, perhaps I'll add it as a later enhancement.
For this exercise, I have created an completely separate and new subscription.
- 3mn-nprod

I can upgrade the account and add a new subscription later to test prod and dr env pipelines
- 3mn-prod

### Register Github Actions as authorized app for azure
[using a service principal](https://docs.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Cwindows#create-an-azure-active-directory-application-and-service-principal)
[create an service principal/rbac role for app](https://github.com/Azure/actions-workflow-samples/blob/master/assets/create-secrets-for-GitHub-workflows.md)
Creating the app registration was simple, but I was missing the service principal as rbac role for the app.
```.env
az ad sp create-for-rbac --name "github" --role owner --scopes /subscriptions/(my sub id) --sdk-auth
This gave Owner privs to github to create any resources, not constrained to a specific resource group. Somewhat concerning, I see why AAD admins keep the perms limited to specific resource groups
```

### Register Azure DevOps as authorized app for azure
I have this from previous work tied to my main account. Github actions are working to the new account, so I'll just use the devops project board functionality.


### Explore Github Actions
references:
- [azure](https://github.com/marketplace?query=Azure&type=actions)
- [terraform](https://github.com/marketplace/actions/hashicorp-setup-terraform)
- [terragrunt](https://github.com/marketplace/actions/terragrunt-github-actions)
- Terragrunt wants a [github token(but you can't start a secret with github...)](https://github.com/settings/tokens), so... add another secret to the repo

At this point, I have an action yaml that checks out the code to a runner, logs into azure, and runs a simple az resource list command.
Ready to start focusing on the terraform / terragrunt steps.


### Explore pre & post commit hooks
[pre-commit tool](https://pre-commit.com/)
[pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)


### Initial setup of state storage
Created a [script](scripts/standup-state-storage.sh) to stand up resources, added them to github secrets so they can be added to the pipeline for terraform state management. This is easier than standing it up through terraform locally and then migrating the state file to cloud storage for pipeline use.


