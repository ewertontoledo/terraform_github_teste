resource "aws_lambda_layers_version" "lambda_layer_creattion" {
  filename   = "${path.module}/Modules/requests-2.7.0.zip"
  layer_name = "requestmodulelayer"

  compatible_runtimes = ["nodejs18.x"]
} 