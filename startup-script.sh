#! /bin/bash
echo "###################################"
echo "Installing curl, git, vim and unzip"
echo "###################################"
apt-get update
apt-get install curl git vim unzip -y
echo "############################################"
echo "Installing AWS CLI, Terraform and Terragrunt"
echo "############################################"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
curl -L -o terraform.zip https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_linux_amd64.zip && unzip -o terraform.zip -d /usr/local/bin/
curl -L -o /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.40/terragrunt_linux_386 && chmod u+x /usr/local/bin/terragrunt
