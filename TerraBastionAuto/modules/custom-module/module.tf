resource "aws_instance" "module-instance-deploy" {
    instance_type = var.instance_type_input
    key_name = var.key_name
    ami = var.ami
    iam_instance_profile = "LabInstanceProfile"
    tags = {
        Name = var.name_instance
    }
}