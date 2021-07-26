#!/bin/bash

docker build -t analysis_image:latest .
echo -e '\n\nSaving docker image containing MNIST data analysis task...'
docker image save analysis_image > analysis_image.docker

read -n 1 -s -r -p $'\nScript execution completed. Press any key to continue.'