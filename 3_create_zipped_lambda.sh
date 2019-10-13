#!/bin/bash
source config_pipeline.cfg

# Create zipped lambda function, exclude ignorefiles
cat .lambdaignore | xargs zip -9r ${BUILD_DIR}/${ZIP_FN} build/ app/ -x
