output "web_instance_id" {
  value = "${aws_instance.web-instance.*.id}"
}
