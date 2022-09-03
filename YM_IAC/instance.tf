
# Creating EC2 Instances

    resource "aws_instance" "ec2-01" {
     ami           = "ami-0960ab670c8bb45f3"
     instance_type = "t2.micro"
     subnet_id     = aws_subnet.subnet03.id
     key_name      = "revision1"
     vpc_security_group_ids = [aws_security_group.webtraffic.id]
     tags = {
          Name = "EC2-A-1"   }
    }
    
    resource "aws_instance" "ec2-02" {
       ami           = "ami-0960ab670c8bb45f3"
       instance_type = "t2.micro"
       subnet_id     = aws_subnet.subnet03.id
       key_name      = "revision1"
       vpc_security_group_ids = [aws_security_group.webtraffic.id]
          tags = {
           Name = "EC2-A-2"   }
    }
    
     resource "aws_instance" "ec2-03" {
       ami           = "ami-0960ab670c8bb45f3"
       instance_type = "t2.micro"
       subnet_id     = aws_subnet.subnet04.id
       vpc_security_group_ids = [aws_security_group.webtraffic.id]
       key_name      = "revision1"
          tags = {
           Name = "EC2-B-1"   }
     }

      resource "aws_instance" "ec2-04" {
       ami           = "ami-0960ab670c8bb45f3"
       instance_type = "t2.micro"
       subnet_id     = aws_subnet.subnet01.id
       vpc_security_group_ids = [aws_security_group.sgalb.id]
       key_name      = "revision1"
          tags = {
           Name = "Jump Server"   }
     }