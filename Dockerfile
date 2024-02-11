FROM ubuntu:latest
LABEL authors="vikazeni"

RUN apt-get update
RUN apt-get install -y build-essential git cmake g++-14
RUN git clone --recursive https://github.com/corvusoft/restbed.git
RUN mkdir restbed/build; cd restbed/build; cmake -DBUILD_SSL=NO ..; make install

ENTRYPOINT ["ls"]