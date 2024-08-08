# Create an RDS database instance
resource "aws_db_instance" "my-aws-rds" {
  # The amount of storage to allocate to the database instance
  allocated_storage = 20

  # The type of storage to use for the database instance
  storage_type = "gp2"

  # The database engine to use for the database instance
  engine = "mysql"

  # The version of the database engine to use for the database instance
  engine_version = "5.7"

  # The instance class to use for the database instance
  instance_class = "db.t2.micro"

  # The username to use for the database instance
  username = "admin"

  # The password to use for the database instance
  password = "P@ssw0rd1234!"

  # The name of the parameter group to use for the database instance
  parameter_group_name = "default.mysql5.7"

  # Whether to skip creating a final snapshot of the database instance when it is deleted
  skip_final_snapshot = true
}
