resource "aws_s3_bucket" "tt-bucket" {
  bucket = var.bucket-name
}

resource "aws_s3_object" "tt-bucket-files" {
    bucket = aws_s3_bucket.tt-bucket.id
    key    = each.key
    source = "${path.module}/${each.value}"
  
    for_each = var.file_assets
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}