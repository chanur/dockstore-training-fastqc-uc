FROM ubuntu:16.04
MAINTAINER Uma Chandran <chandran201@gmail.com>
RUN apt-get update && apt-get install -y fastqc perl-doc
CMD bash 



