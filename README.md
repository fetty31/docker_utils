# Docker utils
Within this project you can find useful scripts in order to quickly build & run ROS _docker containers_ while mounting a ROS workspace ([catkin_ws](workspaces/catkin_ws/) or [colcon_ws](workspaces/colcon_ws/)) as an external volume, enabling GUI applications (X server) and GPU access.

Note that _Dockerfiles_ are also given in order to build _docker images_ on top of ROS/ROS2 desktop. 

## Quick start
### ROS Noetic
```sh
chmod +x /scripts/build /scripts/run #once
./scripts/build # creates a docker image on top of ros-noetic
./scripts/run   # runs docker container with catkin_ws mounted and X-server connection
```

### ROS2 Humble
```sh
chmod +x /scripts/build2 /scripts/run2 #once
./scripts/build2 # creates a docker image on top of ros2-humble
./scripts/run2   # runs docker container with colcon_ws mounted and X-server connection
```

_NOTE: with the standard docker config, the GUI applications will only work when executing the above commands as sudo._

Other useful bash scripts:
- `clean` : cleans dangling _images_ and stopped _containers_
- `run_gpu/run2_gpu` : same as `run` script but with GPU access from the docker container.
