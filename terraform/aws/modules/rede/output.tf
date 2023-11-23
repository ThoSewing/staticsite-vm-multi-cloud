output "vpc_id" {
    value = "${aws_vpc.vpc.id}"
}

output "subnet_id" {
    value = "${aws_subnet.sn_public.id}"
}

output "subnet2_id" {
    value = "${aws_subnet.sn_public2.id}"
}