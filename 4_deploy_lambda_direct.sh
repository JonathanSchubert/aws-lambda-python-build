#!/bin/bash
source config_pipeline.cfg

# Update lambda from local
aws lambda update-function-code --function-name $AWS_LAMBDA_NAME --region $AWS_REGION --zip-file fileb://${BUILD_DIR}/${ZIP_FN} --profile $AWS_PROFILE