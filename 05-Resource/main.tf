resource "aws_instance" "web" {
    ami  =  "ami-00abfd8da690f984d"
    instance_type = "t3.micro"

    tags = {
       Name = "Hello World"

    }
}

