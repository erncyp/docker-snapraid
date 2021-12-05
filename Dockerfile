FROM ubuntu
ARG SNAPRAID_VERSION=v11.5
RUN mkdir /src
WORKDIR /src
RUN apt update
RUN apt install build-essential git autoconf automake libtool -y
RUN git clone --branch ${SNAPRAID_VERSION} https://github.com/amadvance/snapraid.git
WORKDIR /src/snapraid
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
ENTRYPOINT ["snapraid"]