# README.md for DockerHub

## How to build an image

```
docker build -t heatmap_gen:latest https://raw.githubusercontent.com/ipa-rar/laserscan_aggregator/main/docker/Dockerfile
```

### Using the docker image

To get `docker` up and running with graphical interface `RViz` to vizualize the laser scans and the heatmaps, an additional script is required
```
curl -o gui-docker \
https://raw.githubusercontent.com/ros-planning/moveit/master/.docker/gui-docker && \
chmod +x gui-docker
```

Once the laser scanners are installed and running, the docker container can be started to calculate and vizualize the heatmaps
```
./<path/to/>gui-docker --net=host laserscan_aggregator:latest roslaunch laserscan_aggregator heatmap_generator.launch
```