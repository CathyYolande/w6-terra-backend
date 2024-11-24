resource "aws_iam_user" "user" {
    name = "Linda"

}
resource "aws_iam_group" "group" {
    name = "SRE"
    
}
resource "aws_iam_group_membership" "name" {
    group = aws_iam_group.group.name # or "group-name" if group already exists in aws
    users = [ aws_iam_user.user.name ]  # or "user-name" if user already exists in aws
    name = "groupsmem" 
    
}