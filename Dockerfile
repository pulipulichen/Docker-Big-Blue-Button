FROM node:16.15.1-bullseye

# https://docs.bigbluebutton.org/2.5/install.html

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update

RUN apt-get install -y wget sudo iproute2 apt-utils gnupg
RUN apt-get install -y lsb-release

#RUN wget -qO- https://ubuntu.bigbluebutton.org/bbb-install-2.5.sh | bash -s -- -v focal-250 -s bbb.test.pulipuli.info -e blog@pulipuli.info  -a -w
COPY ./bbb-install-2.5.sh /
RUN chmod +x /bbb-install-2.5.sh
RUN bash -s /bbb-install-2.5.sh -v focal-250 -s bbb.test.pulipuli.info -e blog@pulipuli.info  -a -w
#RUN bbb-conf --check
#RUN bbb-conf --status

#ENTRYPOINT 'bbb-conf --secret'