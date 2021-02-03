FROM ubuntu:18.04

RUN apt-get update && \ apt-get install -y inotify-tools
RUN useradd -ms /bin/bash bruce
USER bruce
WORKDIR /home/bruce/
RUN mkdir compressed-backup
RUN mkdir test

ADD test.sh /home/bruce/
RUN chmod +x /home/bruce/test.sh
CMD /home/bruce/test.sh ; sleep infinity
