// first execute the terraform with environment as aosdev 
// as there is no specific vault for aosdev, we have to update the environment value with dev in all the lambdas created manually.
aws_access_key                       = ""
aws_secret_key                       = ""
region                               = ""

tags                                 = ["ubuntu-server", "my-test-Virtual-Private-Cloud", "my-test-subnet"]
