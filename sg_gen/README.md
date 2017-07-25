aws generic security group
===========

A terraform module which allow custom port ingress rule.

Inbound Ports
-----
- TCP/UDP  0-65535


Module Input Variables
----------------------

- `name` - name tags that will be added to resources created by the module
- `security_group_name` - security group name
- `port` - 1 to 65535
- `protocol` - TCP/UDP etc etc
- `allowed_cidr_blocks` - Allowed ingress CIDR blocks
- `allowed_security_groups` - Allowed ingress security groups by ID.

Usage
-----


```hcl
module "demo_sg_something" {
  source = "github.com/stack42/terraform_aws_sg//sg_gen"
  vpc_id                  = "vpc_id"
  port                    = "8080"
  protocol                = "tcp"
  security_group_name     = "${var.name}-something"
  allowed_cidr_blocks     = ["whatever-ip/32"]
  allowed_security_groups = []
  name                    = "${var.name}"
  environment             = "${var.environment}"
}
```

Outputs
=======

- `security_group_id_gen`


Authors
=======

Phillip Bailey
