resource "aws_db_parameter_group" "db_parameter_group" {
  name = "${var.engine_name}-db-parameter-group"

  family = "${var.engine_name}${var.major_engine_version}"

  parameter {
    name = "character_set_database"
    value = var.charset
  }

  parameter {
    name = "character_set_server"
    value = var.charset
  }
}

resource "aws_db_option_group" "db_option_group" {
  name = "${var.engine_name}-db-option-group"
  engine_name = var.engine_name
  major_engine_version = var.major_engine_version

  option {
    option_name = var.option_name
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name = "${var.engine_name}-db-subnet-group"
  subnet_ids = var.private_subnet_ids
}
