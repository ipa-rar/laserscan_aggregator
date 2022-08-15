## Adding new Laser-scanners to the system

To add a new laser scanner to the system append the following details to the `config/costmap_params.yaml` file.
````
scan_x: {sensor_frame: node_x, data_type: LaserScan, topic: /node_x/scan, marking: true, clearing: true, inf_is_valid: true,
       expected_update_rate: 1, max_obstacle_height: 1.0, min_obstacle_height: 0.0, obstacle_range: 10.0, raytrace_range: 10.0}

````
## Modify the aggregation time

To modify the aggragation time of heatmap generation edit the parameter value of `aggregation_time` parameter in the `launch/heatmap_generator.launch` file. Note that the aggregation value is represented in seconds. For example, 1 hour is 3600.  