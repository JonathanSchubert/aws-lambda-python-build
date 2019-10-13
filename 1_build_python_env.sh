#!/bin/bash
source config_pipeline.cfg

# Clean previous builds
rm -rf ${PYTHON_BUILD_DIR} && mkdir -p ${PYTHON_BUILD_DIR}

# Create lambda python env
docker run --rm -v `pwd`:/var/task:z lambci/lambda:build-${PYTHON_VER} $PYTHON_VER -m pip --isolated install -t ${PYTHON_BUILD_DIR} -r app/requirements.txt

# Create lambda python env and jump into the container
# docker run --rm -it -v `pwd`:/var/task:z lambci/lambda:build-${PYTHON_VER}  /bin/bash -c "${PYTHON_VER} -m pip --isolated install -t ${PYTHON_BUILD_DIR} -r requirements.txt; /bin/bash"
