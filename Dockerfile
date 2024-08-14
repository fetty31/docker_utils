FROM osrf/ros:humble-desktop

RUN apt-get update && apt-get install -y \
	net-tools \
	git \
	wget \
	inetutils-ping \
	x11-apps \
	vim \
	gdb \
	&& echo "alias devel='source install/setup.bash'" >> /home/.bashrc \
	&& rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]