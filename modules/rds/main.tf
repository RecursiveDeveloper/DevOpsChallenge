resource "aws_db_instance" "rds_challenge" {
    allocated_storage    = 10
    db_name              = "rds_challenge"
    engine               = "mysql"
    engine_version       = "8.0.33"
    instance_class       = "db.t3.micro"
    username             = "admin"
    password             = "AdminDB1-*2_*0-"
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot  = true
}
