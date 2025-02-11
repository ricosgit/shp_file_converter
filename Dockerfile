FROM ubuntu:20.04
COPY /setting/input.txt /home/
RUN apt update && \
    apt install -y gdal-bin < /home/input.txt && \
    apt install nkf && \
    apt-get install -y vim