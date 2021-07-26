FROM python:3.8

MAINTAINER "S Balyan <shubham.balyan@rwth-aachen.de>"
    
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

RUN mkdir -p /analysis-code
WORKDIR /analysis-code/
COPY ./mnist_pca.py /analysis-code

EXPOSE 5064

CMD [ "python", "/bin/bash", "-c" ]