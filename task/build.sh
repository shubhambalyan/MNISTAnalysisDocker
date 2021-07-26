#!/bin/bash

container_1=image_container
container_2=analysis_container

# Run the image container in detach mode (make sure there is no container with the same name running)
docker run -dit --name $container_1 mnist_data_image:latest bash

# Run the analysis container in detach mode and provide the image container as environment variable
# (make sure there is no container with the same name running)
docker run -dit --name $container_2 --env IMG_CONT_NAME=$container_1 analysis_image:latest bash

var=$(docker exec $container_2 printenv IMG_CONT_NAME)
echo -e '\n\n--> The environment variable passed to analysis container is: IMG_CONT_NAME=' $var

echo -e '\n\n--> Contents of analysis container before moving data from image container...'
docker exec $container_2 ls

echo -e '\n\n--> Moving data from image container to analysis container...'
docker cp  $var:\\image-data\\mnist_data.csv mnist_data.csv
docker cp mnist_data.csv $container_2:\\analysis-code\\mnist_data.csv
echo -e '\n\n--> Moving data completed...'

echo -e '\n\n--> Contents of analysis container after moving data from image container...'
docker exec $container_2 ls

#winpty docker container attach $container_2
echo -e '\n\n--> Performing Principal Component Analysis on MNIST data...\n'
docker exec $container_2 python3 -W ignore mnist_pca.py

read -n 1 -s -r -p $'\nScript execution completed. Press any key to continue.'