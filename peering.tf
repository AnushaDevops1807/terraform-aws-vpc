resource "aws_vpc_peering_connection" "foo" {
  count = var.is_peering_required ? 1 : 0   #Here count is 0, meaning default condition is false as mentioned in variable, 0 means not create.
  
  vpc_id        = aws_vpc.main.id #requestor
  peer_vpc_id   = local.default_vpc_id #acceptor
  auto_accept   = true

  tags = merge(
    var.common_tags,
    var.vpc_peering_tags,
    {
        Name = "${local.resource_name}-default"
    }
  )
  
}