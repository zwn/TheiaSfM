FROM zwn97/theiasfm-docker-base

VOLUME /theiasfm-repo

RUN mkdir -p /theiasfm-build

WORKDIR /theiasfm-build

RUN cmake /theiasfm-repo
RUN make
CMD make test

