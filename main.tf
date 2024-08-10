resource "aws_s3_bucket" "test_bucket" {
  bucket = "${var.bucket_name}"
  acl    = "private"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro" 

  tags = {
    Name = "TerraformExample"
  }
}
