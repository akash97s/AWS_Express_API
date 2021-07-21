rm Archive.zip
cd api_template
$compress = @{
  Path = "C:\Users\Akash Selvakumar\documents\github\aws_api\*"
  CompressionLevel = "Fastest"
  DestinationPath = "C:\Users\Akash Selvakumar\documents\github\Archive.zip"
}
Compress-Archive @compress
cd ..
cd ..
aws lambda update-function-code --function-name test_API --region us-east-2 --zip-file fileb://Archive.zip

# aws lambda update-function-code \ --function-name test_API \ --zip-file fileb://Archive.zip

# rm Archive.zip
# cd serverless-express-api-template
# zip -r ../Archive.zip *
# cd ..
# aws lambda update-function-code --function-name {YOUR FUNCTION} --region eu-west-1 --zip-file fileb://Archive.zip
# kf97qii0s02b37kQGsxin9LZ8jhOaXCC7BMlO35m
