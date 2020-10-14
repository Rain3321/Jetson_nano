#!/bin/bash

# The Original is https://github.com/jkjung-avt/tensorrt_demos/blob/master/ssd/install_pycuda.sh

# yolov4
wget https://raw.githubusercontent.com/AlexeyAB/darknet/master/cfg/yolov4.cfg -q --show-progress --no-clobber
wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights -q --show-progress --no-clobber


echo "Creating yolov4-416.cfg and yolov4-416.weights"
cat yolov4.cfg | sed -e '2s/batch=64/batch=1/' | sed -e '7s/width=608/width=416/' | sed -e '8s/height=608/height=416/' > yolov4-416.cfg
ln -sf yolov4.weights yolov4-416.weights

echo
echo "Done."

