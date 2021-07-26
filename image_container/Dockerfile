FROM python:3.8

MAINTAINER "S Balyan <shubham.balyan@rwth-aachen.de>"

RUN mkdir -p /image-data
WORKDIR /image-data/
COPY ./data/mnist_data.csv /image-data

EXPOSE 5000

CMD [ "python", "/bin/bash", "-c" ]