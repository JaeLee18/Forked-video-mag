FROM chennavarri/ubuntu_opencv_python
FROM ubuntu:16.04
WORKDIR /code
COPY requirements.txt setup.py /code/
RUN mkdir eulerian_magnification
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    python3-pip
RUN pip3 install -r requirements.txt
RUN apt-get install -y python3-tk
COPY . /code/
RUN pip3 install -r requirements.txt
