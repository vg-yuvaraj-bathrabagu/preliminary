
# Export AWS Credentials to proceed further
* export AWS_ACCESS_KEY_ID="******"
* export AWS_SECRET_ACCESS_KEY="*******"

# Run the below commands to setup the infra in aws
* git clone https://github.com/yuvaraj-b/preliminary.git
* cd terraform
* terraform init
* terraform plan (if you want to verify before applying)
* terraform apply
* curl the dns which was given as console output (give like 3 to 4 mins for the dns to be available)
* terraform output --json > test/verify/files/terraform.json

# To verify the inspec run the below command
* inspec exec test/verify -t aws://us-east-2

## Mentions
* Used us-east-2 instance ami id. So defaulted the region with us-east-2
* I haven't used ansible since I used terraform itself to deploy the setup. Since I am using simple busybox for http with ubuntu I don't need to make it complicated. Also I felt when the need is fulfilled in terraform I haven't used Ansible.

## Output
* Your expected output was just Hello World.
* To make the testing process east I have changed the output a little like below
  * `Hello, World instance id of this server is {instanceid}` 
  * `{instanceid}` will be the server's instance id.
