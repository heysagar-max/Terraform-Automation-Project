resource "aws_s3_bucket" "mybucket" {
  bucket = "bucckeeet08022026"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.mybucket.bucket
  key    = "text.txt"
  source = "${path.module}/text.txt"

  etag       = filemd5("${path.module}/text.txt")
  depends_on = [aws_s3_bucket.mybucket]
}

