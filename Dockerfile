FROM osrf/ros:humble-desktop

RUN apt-get update && apt-get install -y \
	net-tools \
	git \
	wget \
	inetutils-ping \
	x11-apps \
	vim \
	&& rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]