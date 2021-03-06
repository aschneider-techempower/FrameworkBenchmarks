#!/bin/bash

mkdir -p $IROOT/.pip_cache
export PIP_DOWNLOAD_CACHE=$IROOT/.pip_cache

fw_depends python2 python3

$IROOT/py2/bin/virtualenv $TROOT/py2
$TROOT/py2/bin/pip install -r $TROOT/requirements.txt

$IROOT/py3/bin/python3 -m venv $TROOT/py3
$TROOT/py3/bin/pip install -r $TROOT/requirements.txt
