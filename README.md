

# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This poject is going to use semantic Versioning for its tagging
[semver.org](https://semver.org/)
The general format **MAJOR.MINOR.PATCH**, eg. `1.0.1`


- **MAJOR** version when you make incompatible API changes, 
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
https://www.gitpod.io/docs/configure/workspaces/tasks

# Commands to update for the ENV

# list the environment variables
$env
We can list out all Environment Variables (Env Var) using the `env` command

list the  gitpod variable
$ env | grep GITPOD
$ env | grep ROOT

## setting and unsetting Env Vars
in the terminal we can set using `export HELLO='world'`

or unset HELLO

Within a bash script we can set env witout writing export

$ gp env PROJECT_ROOT='/workspace/terraform-beginner-bootcamp-2023'


### AWS CLI Installation

AWAS CLI is installed for the project via bash script.  [`./bin/install_aws_cli`](./bin/install_aws_cli)

[Getting started aws install](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

DO NOT SET aws config use ENV VAR instead
[Set the aws cli en vars](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

we can check it our AWS credentials are set correctly by
running the following command
```sh
aws sts get-caller-identity
```

We'll need to generate the CLI Creds in order to connect


# Terraform Basics

### Terraform Registry

Terraform sources their providers and modules from the Terraform restristy
which is located at [registry.terraform.io](https://registry.terraform.io)

- **providers** is an interface to APIs that will allow you to create resources in terraform
- **Modules** are a way to refactor or make large amounts of code modular, portable, and shareable.

[Random Terraform Provider](https://registry.terraform.io/providers/hashicorp/random)

## Terrform Console

We can see a list of all the Terraform commands by simply typing 'terraform'

#### Terraform init

at the start of a new terraform project we will run `terrafrom init` to download the binaries for the terraform providers that we'll use in this project.

#### Terraform Plan

`terraform plan`
This will generate out a changeset, about the state of our infrastructure and waht will be chagned we can output this plan
to be passed to an apply, but often you can ignore outputting

#### Terraform Apply

`terraform apply`

This will run a plan and pass the changeset to be executed by terraform. Apply should promt us
 you can supply the auto approve flag `terrafrom apply -auto-approve`

 #### Terraform Lock Files

 `.terraform.lock.hcl` contains the locked versioning for the providers or modules that 
 should be used with this project.

 The Terraform lock files should be committed to your version control system.



 #### Terraform state files

 `.terraform.tfstate` contain information about the current state of your infrastrucure

 The file Should NOT be committed to version control as it contains sensistive data

 If you lose this file, you lose knowing the state of your infrastructure 

 `.terraform.tfstate.backup` is the previous state of your infrastucture 


 #### Terraform Directory

 `.terraform` directory contains cached providers and modules, shich workspace is currently active, and record the last know backend configuraion is case it meeds to migrate state on the next run.

 #### Terraform destroy

 `terraform destroy` 
 This will destroy resrouces.
 You can also use the auto approve prompt flag to skip the appove prompt  `terraform destroy --auto-approve`


 #### Terraform issues with terraform cloud login and gitpod
 when trying to use `terraform login` it will launch a wwiswig view to generate a token. this may make is hard to paste token so you may need
 to create the file `/home/gitpod/.terraform.d/credentials.tfrc.json` and manually add your token in to that file
If a browser does not open this automatically, open the following URL to proceed:
    [Get the token manually](https://app.terraform.io/app/settings/tokens?source=terraform-login)

 ```js
 {
  "credentials": {
    "app.terraform.io": {
      "token": "Your Token Here"
    }
  }
}```