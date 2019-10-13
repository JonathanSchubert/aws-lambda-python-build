# aws-lambda-python-build

Build, test and ship an AWS lambda function package with custom Python modules:

## Preparations:
1. Put the Python program and the requirements.txt in `./app`
2. Adapt the configuration in `./config_pipeline.cfg` to your needs

## Build, Run, Ship
1. Install the custom Python modules within a LambCI-Build Docker container  
`./1_build_python_env.sh`
2. Execute the Python program locally within a LambCI Docker container  
`./2_run_lambda_local.sh`
3. Zip the code and the custom Python modules into a lambda function package  
`./3_create_zipped_lambda.sh`
4. Ship the lambda function package directly to AWS lambda  
`./4_deploy_lambda_direct.sh`
4. Ship the lambda function package via S3  
`./5_deploy_lambda_via_S3.sh`
