provider "aws" {
  region="us-east-1"
}

resource "aws_instance" "my_ec2" {
   ami="ami-071226ecf16aa7d96"
   instance_type="t2.micro"

   tags={
      name ="my_ec2"
}
}
