#!/bin/bash
IP=$(hostname -I | awk '{print $1}')
export ROS_MASTER_URI=http://${IP}:11311/
