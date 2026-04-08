#!/bin/bash
# run_spark.sh

docker run --gpus all --runtime=nvidia -it --rm \
  --user $(id -u):$(id -g) \
  -v /home/faisalm/dev:/workspace \
  -w /workspace/ng-video-lecture \
  --ipc=host \
  -e HOME=/tmp \
  -p 6006:6006 \
  nvcr.io/nvidia/pytorch:26.01-py3 \
  /bin/bash