FROM ros:noetic

LABEL maintainer "Ragesh Ramachandran <ragesh.ramachandran@ipa.fraunhofer.de>"
SHELL ["/bin/bash","-c"]

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y git \
	&& apt-get -y install python3-pip \
    && python3 -m pip install pyngsi

ENV CATKIN_WS=/root/server_ws
RUN mkdir -p $CATKIN_WS/src
WORKDIR $CATKIN_WS/src

RUN git clone https://github.com/ipa-rar/laserscan_aggregator.git 
    
WORKDIR $CATKIN_WS
RUN echo "Pulling & Compiling THMHO serverside application" \
    && source /opt/ros/noetic/setup.bash \
	&& rosdep update \
	&& rosdep install --from-paths src --ignore-src -r -y \
	&& catkin_make \
    && rm -rf /var/lib/apt/lists/*

#RUN echo "source /entrypoint.sh" >> /root/.bashrc
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
#RUN /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 
CMD ["bash"]