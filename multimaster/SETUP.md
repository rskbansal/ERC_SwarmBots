# multimaster_fkie
## What is [multimaster_fkie](http://wiki.ros.org/multimaster_fkie)?
The ROS stack of ***fkie_multimaster*** offers a complete solution for using ROS with multicores. In addition, Node Manager with a daemon provide a GUI-based management environment that is very useful to manage ROS-launch configurations and control running nodes, also in a single-core system.

## Install
The first step is to install Python [gRPC](https://grpc.io/), which helps in communication purposes.
```
sudo apt install python-grpcio python-grpc-tools
```
Now, make sure you are present in the `src` folder of your ***catkin workspace***, just type `cd ~/catkin_ws/src`. And then, execute the following commands :-
```
git clone https://github.com/fkie/multimaster_fkie.git multimaster
rosdep update
rosdep install -i --as-root pip:false --reinstall --from-paths multimaster
```
After installation of all the packages, we need to build the same using `catkin_make` command. But make sure that before running the command, you are present in the root of your ***catkin workspace***, just type `cd ~/catkin_ws`.

## References
[ROS Wiki for multimaster](http://wiki.ros.org/multimaster_fkie)  
[Official Github](https://github.com/fkie/multimaster_fkie)  
[gRPC](https://grpc.io/)  
[Programming Robots with ROS](../Programming_Robots_with_ROS.pdf)

> Congratulations! You have succefully installed multimaster_fkie for your workspace and can start working with multiple masters now. For any further information, you may refer these resources :)