[Download Terraform](https://www.terraform.io/downloads.html)  
Manual Installation

```
Right click Linux | 64-bit > Copy link address
wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip
unzip ~/Downloads/terraform_0.14.7_linux_amd64.zip
sudo mv ~/Downloads/terraform /usr/local/bin/
terraform --version
```
[Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)
Ubuntu Installation

```commandline
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform

terraform version
terraform -help plan
```
Enable tab completion

```commandline
terraform -install-autocomplete
```
