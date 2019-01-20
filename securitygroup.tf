data "aws_ip_ranges" "eastern_ec2" {
  regions = [ "us-east-1", "us-east-2" ]
  services = [ "ec2" ]
}

resource "aws_security_group" "from_east" {
  name = "from_east"

  ingress {
    from_port = "${var.HTTP_PORT}"
    to_port = "${var.HTTP_PORT}"
    protocol = "tcp"
    cidr_blocks = [ "${data.aws_ip_ranges.eastern_ec2.cidr_blocks}" ]
  }
  tags {
    CreateDate = "${data.aws_ip_ranges.eastern_ec2.create_date}"
    SyncToken = "${data.aws_ip_ranges.eastern_ec2.sync_token}"
  }
}
