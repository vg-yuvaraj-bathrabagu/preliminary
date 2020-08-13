
# Export AWS Credentials to proceed further
==========================================
* export AWS_ACCESS_KEY_ID="******"
* export AWS_SECRET_ACCESS_KEY="*******"

# Run the below commands to execute
===================================
* git clone https://github.com/yuvaraj-b/preliminary.git
* cd terraform
* terraform init
* terraform plan (if you want to verify before applying)
* terraform apply
* curl the dns which was given as console output (give like 3 to 4 mins for the dns to be available)
* terraform output --json > test/verify/files/terraform.json

# To verify the inspec run the below command
============================================
* inspec exec test/verify -t aws://us-east-2