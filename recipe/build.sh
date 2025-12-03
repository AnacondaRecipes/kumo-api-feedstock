#!/bin/bash

set -xe

# install using pip from the whl files on PyPI

if [ `uname` == Darwin ]; then  
    WHL_FILE=kumo_api-${PKG_VERSION}-py3-none-any.whl
    curl -Lso "$WHL_FILE" https://pypi.org/packages/py3/k/kumo-api/kumo_api-${PKG_VERSION}-py3-none-any.whl
fi

if [ `uname` == Linux ]; then
    WHL_FILE=https://pypi.org/packages/py3/k/kumo-api/kumo_api-${PKG_VERSION}-py3-none-any.whl
fi

$PYTHON -m pip install --no-deps --no-build-isolation -vvv $WHL_FILE