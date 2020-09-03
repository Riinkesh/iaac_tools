# Context

This repository can be used to setup the necessary tools for running git, terraform, terragrunt and awscli in an ubuntu docker container.

## Setup

Clone this repository in a local directory. This directory shall then be mounted to the ubuntu linux docker container's workspace we will create for the tutorial.

```bash
git clone https://github.com/Riinkesh/iaac_tools.git
```

## Usage
1) Run a docker container using the command as below-

```bash
docker run -it -v C:\Users\IAMUser\Desktop\IAAC:/opt/workspace ubuntu
```
Here *C:\Users\IAMUser\Desktop\IAAC* is the path in a windows system, where the repository has been cloned.

2) Exec into the docker container and navigate (cd) to the path */opt/workspace*.

3) Run the startup script mounted from the repository in local-

```bash
./startup-script.sh
```
This script will install-

- Git
- AWS CLI Version 2
- Terraform (v 0.13.2)
- Terragrunt (v 0.23.40)
- and few other necessary packages (curl, vim, and unzip).

Run the below commands to confirm the installation once the above script completes.

```bash
git --version
aws --version
terraform -v
terragrunt -v
```
## Configuring the AWS CLI

This section explains how to configure the settings that the AWS CLI uses to interact with AWS. These include your security credentials, the default output format, and the default AWS Region.

Among different methods of configuring these settings is the environment variables method, which can be useful for scripting or temporarily setting a named profile (IAM User) as the default.

We are using the environment variables method in this tutorial.
The following examples show how you can configure environment variables for the default user.

```bash
export AWS_ACCESS_KEY_ID=YOURIAMUSERACCESSKEY
export AWS_SECRET_ACCESS_KEY=YOURIAMUSERSECRETaBcDxYzEXAMPLEACCESSKEY
export AWS_DEFAULT_REGION=us-central-1
```
Setting the environment variable changes the value used until the end of your session, or until you set the variable to a different value. 

## License
[MIT](https://choosealicense.com/licenses/mit/)
