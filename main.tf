
module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "remote-python-a"
  handler       = "remote_python_a.entrypoint.lambda_handler"
  runtime       = "python3.9"

  create_package         = false
  local_existing_package = "dist/remote-python-a.zip"
}