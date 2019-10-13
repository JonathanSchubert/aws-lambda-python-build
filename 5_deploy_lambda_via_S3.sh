#!/bin/bash
source config_pipeline.cfg

# Upload zip to S3
aws s3 cp ${BUILD_DIR}/${ZIP_FN} s3://$AWS_S3_BUCKET --profile $AWS_PROFILE --region $AWS_REGION

# Update lambda from S3
aws lambda update-function-code --function-name $AWS_LAMBDA_NAME --region $AWS_REGION  --profile $AWS_PROFILE --s3-bucket $AWS_S3_BUCKET --s3-key $ZIP_FN
