# Docker utils
Within this project you can find useful scripts in order to quickly build & run ROS _docker containers_ while mounting a ROS workspace ([catkin_ws](workspaces/catkin_ws/) or [colcon_ws](workspaces/colcon_ws/)) as an external volume and enabling GUI applications (X server).

Note that a _Dockerfile_ is also given in order to build _docker images_ on top of ROS Noetic (desktop-full). 

## Quick start
```sh
chmod +x /scripts/build /scripts/run #once
./scripts/build # creates a docker image on top of ros-noetic
./scripts/run   # runs docker container with catkin_ws mounted and X-server connection
```

_NOTE: with the standard docker config, the GUI applications will only work when executing the above commands as sudo._

Other useful bash scripts:
- `clean` : cleans dangling _images_ and stopped _containers_
- `run_extra` : same as `run` script but is meant to run other self-build _docker images_ (not the one built using the `build` script). _E.g. starting a _docker container_ from an _image_ which has all the current workspace dependencies already installed._
