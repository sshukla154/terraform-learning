# terraform-learning - DECLARATIVE APPROACH

## Commands
- Open the file in terminal/ cmd and execute below command:
1. ```terraform init```: Will initialize the pluging defined in provider. This will create dot terraform folder and install all the necessary plugin it it.
2. ```terraform plan```: Will validate the resources defined in terraform script is correct or not.
3. ```terraform apply```: Will create the resources defined in terraform script.
4. ```terraform destroy```: Will destory the resources defined in terraform script.
5. ```terraform apply --auto-approve```: Will ignore asking YES while applying terraform resource/s.
6. ```terraform destroy --auto-approve```: Will ignore asking YES while destroying terraform resource/s.
7. ```terraform state list```: Will list out all the resource we have state for.
8. ```terraform state show <resouce_name>```: Will give the complete details of the resouce.
9. ```terraform output```: Will give the output/s of the resource.
10. ```terraform refresh```: Will refresh the resource without applying the changes.
11. ```terraform destroy -target <resource_name>```: Will delete the particular resource.
12. ```terraform apply -target <resource_name>```: Will create only the particular resource.
13. ```terraform apply -var <pass_the_value>```: Will create the resouces defined in terraform script and wont ask to enter the value manually now.
14. ```terraform apply -var-file <file_name>```: Will create the resouces defined in terraform script and wont ask to enter the value manually now. E.g. ```terraform destory -var-file dev.tfvars```

Notes:
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs
- It is not mandatory to perfom ```terraform plan``` operation but highly recommended.
- Even if we perform ```terraform apply``` on the same file multiple time (wihout any modification), there wont be any efffect unless terraform detects some differences between ```terraform.tfstate``` and ```terraform.tfstate.backup```
- We can perform delete of any resouce by using ```terraform delete``` and also once we comment out the resource from terraform script file and perform ```terraform apply```, it will compare the currect state and backup state (i.e Update), post which it will delete the resource
- For output 
```
output "output-name" {
    value = "<provider>_<resource_type>.name.<property_name>"
}
```
e.g.
```
output "output-aws-vpc" {
    value = aws_vpc.my-first-vpc.cidr_block
}
```
- To read the variable from file, we can create a ```file_name.tfvars```. Whenever we execute ```plan``` or ```apply``` command for a terraform script, it check for tfvars extension file, if available it will get/replace the value from this file_name.tfvars file.
- We define the varilable/s in *.tf file i.e. description, default and type, but, we assign the varilable/s in *.tfvars file e.g. aws_access_key = "".