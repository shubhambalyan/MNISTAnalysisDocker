#!/bin/bash

docker build -t mnist_data_image:latest .
echo -e '\n\nSaving docker image containing MNIST image data...'
docker image save mnist_data_image > mnist_data_image.docker

read -n 1 -s -r -p $'\nScript execution completed. Press any key to continue.'