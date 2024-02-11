FROM ubuntu:latest
LABEL authors="vikazeni"

RUN apt-get update
RUN apt-get install -y build-essential git cmake
RUN git clone  --recurse-submodules=dependency/asio https://github.com/corvusoft/restbed.git
RUN mkdir restbed/build; cd restbed/build; cmake -DBUILD_SSL=NO -DBUILD_TESTS=NO ..; make install

ENTRYPOINT ["ls"]