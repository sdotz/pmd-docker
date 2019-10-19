FROM openjdk:8-jre-slim-buster

ENV PMD_VERSION 6.18.0

RUN mkdir /pmd

WORKDIR /pmd

RUN apt update && apt install -y wget unzip

RUN wget https://github.com/pmd/pmd/releases/download/pmd_releases%2F${PMD_VERSION}/pmd-bin-${PMD_VERSION}.zip

RUN unzip pmd-bin-${PMD_VERSION}.zip

RUN rm pmd-bin-${PMD_VERSION}.zip

WORKDIR /pmd/pmd-bin-${PMD_VERSION}/bin 

ENTRYPOINT ["./run.sh"]



