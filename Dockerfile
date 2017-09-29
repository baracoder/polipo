FROM ubuntu



RUN apt-get update && apt-get install -y \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /polipo
ADD . /polipo

WORKDIR /polipo

RUN make clean && make

ENTRYPOINT [ "./polipo" ]