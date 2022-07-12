# terraform-learning - DECLARATIVE APPROACH

## Commands
- Open the file in terminal/ cmd and execute below command:
```
1. terraform init: Will initialize the pluging defined in provider. This will create dot terraform folder and install all the necessary plugin it it.
2. terraform plan: Will validate the resources defined in terraform script is correct or not.
3. terraform apply: Will create the resources defined in terraform script.
4. terraform destroy: Will destory the resources defined in terraform script.
5. terraform apply --auto-approve : Will ignore asking YES while applying terraform resource/s.
6. terraform destroy --auto-approve : Will ignore asking YES while destroying terraform resource/s.
```

Notes:
- It is not mandatory to perfom ```terraform plan``` operation but highly recommended.
- Even if we perform ```terraform apply``` on the same file multiple time (wihout any modification), there wont be any efffect unless terraform detects some differences between ```terraform.tfstate``` and ```terraform.tfstate.backup```
- We can perform delete of any resouce by using ```terraform delete``` and also once we comment out the resource from terraform script file and perform ```terraform apply```, it will compare the currect state and backup state (i.e Update), post which it will delete the resource