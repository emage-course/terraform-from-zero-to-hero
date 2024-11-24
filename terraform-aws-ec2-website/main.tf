# Create an EC2 instance

# Security Group to allow SSH
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_access"
  description = "Allow SSH access on port 22"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 Key Pair
resource "aws_key_pair" "example" {
  key_name   = var.key_name
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAdddssdddddddeeeeeeeeeeeeee kendops2@gmail.com"
  ### Optional: You can use your own private key. To do so, display the contents of your private key file by running: cat ~/.ssh/id_ed25519
}

# Create an EC2 Instance
resource "aws_instance" "example" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.example.key_name
  security_groups = [aws_security_group.allow_ssh.name] # Attach the Security Group

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}