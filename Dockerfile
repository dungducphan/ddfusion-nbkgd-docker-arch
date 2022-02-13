FROM dungphan90/g4root-arch:latest

RUN mkdir -p /home/user/sim/nbkgd
RUN git clone https://github.com/dungducphan/ddfusion-nbkgd.git /home/user/sim/nbkgd
RUN mkdir -p /home/user/sim/build
WORKDIR /home/user/sim/build
RUN cmake /home/user/sim/nbkgd -DCMAKE_CXX_STANDARD=17 -GNinja
RUN ninja
