aws ssh security group
===========

A terraform module which contains rules for inbound HTTP traffic.

Inbound Ports
-----
- TCP 80 (HTTP)


Module Input Variables
----------------------

- `name` - name tags that will be added to resources created by the module
- `security_group_name` - security group name
- `allowed_cidr_blocks` - Allowed ingress CIDR blocks
- `allowed_security_groups` - Allowed ingress security groups by ID.

Usage
-----


```hcl
module "demo_sg_ssh" {
  source = "github.com/stack42/terraform_aws_sg//sg_web"
  vpc_id = "vpc_id"
  security_group_name = "${var.name}-web"
  allowed_cidr_blocks = ["whatever-ip/32"]
  allowed_security_groups = []
  name = "${var.name}"
}
```

Outputs
=======

- `security_group_id_web`


Authors
=======

Phillip Bailey
