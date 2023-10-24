

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


