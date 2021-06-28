
resource "aws_instance" "public_instance" {
  count                       = length(var.public_subnet)
  ami                         = var.ami_id
  availability_zone           = var.public_subnet[count.index].availability_zone
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet[count.index].id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  root_block_device {
    volume_size           = 8
    volume_type           = "gp2"
    delete_on_termination = true

    tags = {
      Name = "${var.public_subnet[count.index].id}-gp2-${var.env_name}-ec2"
    }
  }
}

resource "aws_instance" "private_instance" {
  count                       = length(var.private_subnet)
  ami                         = var.ami_id
  availability_zone           = var.private_subnet[count.index].availability_zone
  instance_type               = var.instance_type
  subnet_id                   = var.private_subnet[count.index].id
  associate_public_ip_address = false

  root_block_device {
    volume_size           = 8
    volume_type           = "gp2"
    delete_on_termination = true

    tags = {
      Name = "${var.private_subnet[count.index].id}-gp2-${var.env_name}-ec2"
    }
  }
}
