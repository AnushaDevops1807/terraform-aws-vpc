locals{
    resource_name = "${var.project_name}-${var.environment}"
    az_names = slice(data.aws_availability_zones.available.names, 0, 2)  #slice(list,startindex,endindex)
    default_vpc_id = data.aws_vpc.default.id
}