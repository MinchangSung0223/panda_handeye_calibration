#!/bin/bash
xhost +local:root
docker rm -f calibration
 docker  run  --rm -it -d --name calibration --privileged  --volume=/dev:/dev --gpus all --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 tjdalsckd/calibration:latest bash
 
docker exec calibration bash -c "source /opt/ros/noetic/setup.bash;source /root/catkin_ws/devel/setup.bash; roslaunch realsense2_camera rs_camera.launch & rviz"

docker rm -f calibration
