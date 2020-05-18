FROM debian:latest

RUN apt-get update && apt-get --yes upgrade && apt-get --yes install wget && apt-get --yes install bzip2

RUN useradd -d /opt/teamspeak3-server -m teamspeak3-user; \
# cd /tmp; \
# wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2; \
wget https://files.teamspeak-services.com/releases/server/3.12.1/teamspeak3-server_linux_amd64-3.12.1.tar.bz2; \
tar -vxjf teamspeak3-server_linux_amd64-3.12.1.tar.bz2; \
mv teamspeak3-server_linux_amd64/* /opt/teamspeak3-server/; \
chown teamspeak3-user:teamspeak3-user /opt/teamspeak3-server -R; \
rm -rf teamspeak3-server_linux_amd64-3.12.1.tar.bz2 teamspeak3-server_linux_amd64/;

EXPOSE 9987/udp 10011 30033

WORKDIR /opt/teamspeak3-server/

CMD "/opt/teamspeak3-server/ts3server_minimal_runscript.sh"