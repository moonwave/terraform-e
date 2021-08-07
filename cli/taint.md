###[terraform taint](https://www.terraform.io/docs/cli/commands/taint.html)
```text
The terraform taint command informs Terraform that a particular object has become degraded or damaged. Terraform
represents this by marking the object as "tainted" in the Terraform state, in which case Terraform will propose
to replace it in the next plan you create.
```