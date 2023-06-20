## Datasource is if you want to find out certain things that are already existing in your account in Amazon
## The autentication to amazon also comes into picture because it has to autenticate to amaazon and get the things
## Do a google search for the instance price terraform datasource to get the price of a particular instance
## Any resource in terraform you will see the argument and Attribute
## You have to look at the required argument and attribute
## Argument means the things that you need to provide .e.g the instance type, avaialabily zone, filter
## When the Argument is run, it expose some data and that data that it exposes is called attribute reference
## search google for "aws security group data source terraform" we know the name of the security group but we want the id




data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

output "price" {
  value = data.aws_ec2_spot_price.example.spot_price
}

data "aws_security_group" "selected" {
  name = "allow-all"
}

output "sgid" {
  value = date.aws_security_group.selected.id
}
