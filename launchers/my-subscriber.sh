#!/bin/bash

source /environment.sh

# initialize launch file
dt-launchfile-init

# launch subscriber
rosrun my_package my_subscriber_node.py

# wait for app to end
dt-launchfile-join

# Note: We need to add the option -n publisher to tell dts to allow 
# multiple instances of the same project to run simultaneously.