resource "aws_iam_user" "lalli" {
    name = "lalli" 
  
}
 resource "aws_iam_access_key" "lalli" {
    user = aws_iam_user.lalli.name
   
 }
  output "access_key_id" {
    value = aws_iam_access_key.lalli.id
    
  }

  output "secret_access_key" {
    value = aws_iam_access_key.lalli.secret
    sensitive = true
  }
   resource "aws_iam_user_policy_attachment" "lalli" {
    user = aws_iam_user.lalli.name
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
    
  }
   
 