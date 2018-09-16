resource "aws_instance" "my-test-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  key_name = "DemoKey"
  vpc_security_group_ids = ["${aws_security_group.allow-ssh.id}"]

  tags {
    Name = "test-instance"
  }
}
