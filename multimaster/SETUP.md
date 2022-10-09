# multimaster_fkie
## What is [multimaster_fkie]()?
The ROS stack of ***fkie_multimaster*** offers a complete solution for using ROS with multicores. In addition, Node Manager with a daemon provide a GUI-based management environment that is very useful to manage ROS-launch configurations and control running nodes, also in a single-core system.

## Install
The first step is to install Python [gRPC](), which helps in communication purposes.
```
sudo apt install python-grpcio python-grpc-tools
```
Now, make sure you are present in the `src` folder of your **catkin workspace**, just type `cd ~/catkin_ws/src` and then, execute the following commands :-
```
git clone https://github.com/fkie/multimaster_fkie.git multimaster
rosdep update
rosdep install -i --as-root pip:false --reinstall --from-paths multimaster
```
After installation of all the packages, we need to build the same using `catkin_make fkie_multimaster`.