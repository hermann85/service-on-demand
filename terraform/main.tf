locals {
  serverconfig = [
    for server in var.configuration : [
        for i in range(1, server.no_of_instances+1) : {
          instance_name = "${server.application_name}-${i}"
          instance_type = server.instance_type
          ami = server.ami
        }
    ]
  ]
}

locals {
  instances = flatten(local.serverconfig)
}


resource "aws_instance" "my_vm" {
  for_each = {for server in local.instances: server.instance_name => server}
  ami = each.value.ami
  instance_type = each.value.instance_type
  key_name = aws_key_pair.ssh_key.key_name
  security_groups = ["${aws_security_group.security.name}"]
  tags = {
    Name = "${each.value.instance_name}"
  }

}

resource "aws_key_pair" "ssh_key" {
  key_name = "ssh_key"
  public_key = file("id_rsa.pub")
}

