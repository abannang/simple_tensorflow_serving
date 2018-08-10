#!/bin/bash

set -x
set -e

docker run -it --net=host -v /root/tobe:/host docker02:35000/operator-repository/simple-tensorflow-serving-cpu bash

pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com tensorflow-serving-api==1.9.0

