# Deploy multimaster_fkie
<img src="../assets/img/ROS_logo.png" alt="drawing" height="40"/>

Now that you have successfully installed all the dependencies for running multiple masters, let's get started with deployment of the same.
## IP Adress binding & other pre-requisites
Type `sudo nano ~/../../etc/hosts` and add the following entries to the file.
```
192.168.XX.XX       Computer1
192.168.XX.XX       Computer2
192.168.XX.XX       Computer3
... 
```
You need to enable the [multicast](https://manpages.ubuntu.com/manpages/jammy/man4/multicast.4freebsd.html#:~:text=Multicast%20routing%20is%20used%20to,of%20the%20same%20data%20packets.) feature as well. To temporarily do the same, type the following command.
```
sudo sh -c "echo 0 >/proc/sys/net/ipv4/icmp_echo_ignore_broadcasts"
```
> **Note**  
> To enable it permanently, type `sudo nano ~/../../etc/sysctl.conf` and add the following line to the file
> ```
> net.ipv4.icmp_echo_ignore_broadcasts=0
> ```
> Once added, type `sudo service procps restart` for the changes to take effect
## Example run
Now, we will launch ***fkie_multimaster*** nodes on different machines. The first step is to launch `roscore` on all the machines.  
Then, open a new terminal instance and launch the `master_discovery` node on each machine.
```
rosrun fkie_master_discovery master_discovery _mcast_group:=224.0.0.1
```
Again, open a new terminal instance and launch the `master_sync` node at each machine to synchronize all the topics and services.
```
rosrun fkie_master_sync master_sync
```
To check all the ROS masters available at the same network, execute the following command
```
rosservice call /master_discovery/list_masters
```
Now we may test a simple ***talker-listener*** program using [rospy_tutorials](http://wiki.ros.org/rospy_tutorials). Simply launch `talker` node on one of the machines and `listener` on the rest.

> This is a note

> **Warning**  
> This is a warning