FROM osrf/ros:noetic-desktop-full

RUN apt-get update && apt-get install -y \
	net-tools \
	git \
	wget \
	inetutils-ping \
	x11-apps \
	vim \
	&& echo "source /home/catkin_ws/devel/setup.bash" >> /root/.bashrc \
	&& rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]