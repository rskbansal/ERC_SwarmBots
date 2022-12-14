# Setup multimaster_fkie
<img src="../assets/img/ROS_logo.png" alt="drawing" height="40"/>

Everything you need to know to get started with multiple masters in ROS!
## What is [multimaster_fkie](http://wiki.ros.org/multimaster_fkie)?
The ROS stack of ***fkie_multimaster*** offers a complete solution for using ROS with multicores. In addition, Node Manager with a daemon provide a GUI-based management environment that is very useful to manage ROS-launch configurations and control running nodes, also in a single-core system.

## Install from source
The first step is to install Python [gRPC](https://grpc.io/), which helps in communication purposes.
```console
$ sudo apt install python3-grpcio
$ sudo apt install python3-grpc-tools
```
Now, make sure you are present in the `src` folder of your ***catkin workspace***, just type `cd ~/catkin_ws/src`. And then, execute the following commands :-
```console
$ git clone https://github.com/fkie/multimaster_fkie.git multimaster
$ rosdep update
$ rosdep install -i --as-root pip:false --reinstall --from-paths multimaster
```
After installation of all the packages, we need to build the same using `catkin_make` command. But make sure that before running the command, you are present in the root of your ***catkin workspace***, just type `cd ~/catkin_ws`.
<br><br>

> Congratulations! You have succefully installed ***multimaster_fkie*** for your workspace and now you can start working with multiple masters. For any further queries, you may refer the below mentioned resources :)

## References
- [ROS Wiki for multimaster](http://wiki.ros.org/multimaster_fkie)  
- [Official Github Repository](https://github.com/fkie/multimaster_fkie)  
- [Programming Robots with ROS](../Programming_Robots_with_ROS.pdf)
