# Output ID of sg_web SG we made
output "security_group_id_ssh" {
  value = "${aws_security_group.main_security_group.id}"
}
