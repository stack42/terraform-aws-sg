# Output ID of workstation SG we made
output "security_group_id_workstation" {
  value = "${aws_security_group.main_security_group.id}"
}
