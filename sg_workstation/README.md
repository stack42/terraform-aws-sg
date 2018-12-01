aws workstation security group
===========

A terraform module which allow inbound traffic from your current workstation external ip address.

Inbound Ports
-----
- TCP/UDP  0-65535


Module Input Variables
----------------------

- `name` - name tags that will be added to resources created by the module
- `security_group_name` - security group name
- `from_port` - 0 to 65535
- `to_port` - 0 to 65535
- `protocol` - TCP/UDP etc etc


Usage
-----


```hcl
module "demo_sg_worstation" {
  source = "github.com/stack42/terraform_aws_sg//sg_workstation"
  vpc_id              = "vpc_id"
  security_group_name = "${var.name}-workstation"
  region              = "${var.region}"
  name                = "${var.name}"
  environment         = "${var.environment}"
  from_port           = "22"
  to_port             = "22"
  protocol            = "tcp"
}
```

Outputs
=======

- `security_group_id_workstation`


Authors
=======

Phillip Bailey
