resource "aws_s3_bucket" "b" {
    bucket = "mybucket-nb1234"
    acl = "private"

    tags {
        Name = "mybucket-nb1234"
    }
}
