FROM alpine:3.13 as downloader
RUN wget https://github.com/NebuTech/NBMiner/releases/download/v37.1/NBMiner_37.1_Linux.tgz -O - | tar xz
WORKDIR /NBMiner_Linux
RUN sha256sum -c nbminer.sha256

FROM ubuntu:20.04
COPY --from=downloader /NBMiner_Linux/nbminer .
RUN useradd -r -s /bin/false nbminer
USER nbminer
ENTRYPOINT ["./nbminer", "--RUN"]