FROM nimbix/ubuntu-base

RUN sudo apt-get -y update
RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository -y ppa:george-edison55/cmake-3.x
RUN sudo apt-get -y update
RUN sudo apt-get install -y cmake
RUN sudo apt-get install -y doxygen
RUN sudo apt-get install -y openssl libssl-dev lcov

RUN sudo apt-get install -y curl
RUN sudo apt-get install -y autoconf
RUN sudo apt-get install -y libtool

RUN echo "Version 1" > ~/Version

ADD ./NAE/help.html /etc/NAE/help.html

CMD /bin/bash
