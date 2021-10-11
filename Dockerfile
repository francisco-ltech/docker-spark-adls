FROM datamechanics/spark:3.1-latest

USER root

WORKDIR /opt/app

ENV PYSPARK_MAJOR_PYTHON_VERSION=3

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY src/ src/
RUN mkdir /tmp/blobfusecfg
COPY fuse_connection.cfg /tmp/blobfusecfg

RUN apt-get -y update \
    && apt-get install -y wget curl libcurl3-gnutls

RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get -y update \
    && apt-get install -y blobfuse

RUN mkdir -p /mnt/blobfusetmp
RUN chown root /mnt/blobfusetmp

RUN mkdir /mnt/adls
