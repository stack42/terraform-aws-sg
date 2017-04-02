aws ssh security group
===========

A terraform module which contains rules for inbound SSH traffic.

Inbound Ports
-----
- TCP 22 (SSH)


Module Input Variables
----------------------

- `name` - vpc name tags that will be added to resources created by the module


Usage
-----

```hcl
module "demo_sg_ssh" {
  source = "github.com/stack42/terraform_aws_sg//sg_ssh"
  vpc_id = "${module.demo_vpc.vpc_id}"
  security_group_name = "${var.name}-ssh"
  allowed_cidr_blocks = ["whatever-ip/32"]
  allowed_security_groups = []
  name = "${var.name}"
}
```



Outputs
=======

- `security_group_id_ssh`


Authors
=======

Phillip Bailey
