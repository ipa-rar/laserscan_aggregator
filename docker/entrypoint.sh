#!/bin/bash
set -e

# setup ros environment
cd /
source "/opt/ros/noetic/setup.bash" && source "$CATKIN_WS/devel/setup.bash"
exec "$@"