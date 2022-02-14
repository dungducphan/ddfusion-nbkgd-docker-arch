FROM dungphan90/g4root-arch:latest

RUN mkdir -p /home/build/sim/
COPY ddfusion-nbkgd /home/build/sim/ddfusion-nbkgd

RUN mkdir -p /home/build/sim/build
WORKDIR /home/build/sim/build
RUN cmake /home/build/sim/ddfusion-nbkgd -DCMAKE_CXX_STANDARD=17 -GNinja
RUN ninja
USER root
COPY entry.sh /usr/local/bin/entry.sh
RUN chmod +x /usr/local/bin/entry.sh
COPY custom.mac /home/build/sim/build
ENTRYPOINT entry.sh
