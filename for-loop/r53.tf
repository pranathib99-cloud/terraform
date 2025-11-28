resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.terraform
  zone_id = var.zone_id
  name    = "${each.key}.${var.domanin_name}" 
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]  #its private ip becouse we are in vpc
  allow_overwrite = true
}
