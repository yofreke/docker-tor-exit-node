FROM ubuntu:14.04

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y tor tor-geoipdb tor-arm nano slurm

ADD launch.sh launch.sh
ADD torrc /etc/tor/torrc

EXPOSE 9001
EXPOSE 9051

ENTRYPOINT bash /launch.sh
