#!/bin/bash
source config_pipeline.cfg

# Execute lambda function in local lambci container
docker run --rm -v "$PWD":/var/task lambci/lambda:$PYTHON_VER app/main.lambda_handler
