FROM ubuntu:latest
LABEL authors="vikazeni"

RUN apt-get update
RUN apt-get install -y build-essential git cmake g++
RUN git clone --recursive https://github.com/corvusoft/restbed.git
RUN mkdir restbed/build
RUN cd restbed/build
RUN cmake -DBUILD_SSL=NO ..
RUN make install

ENTRYPOINT ["ls"]