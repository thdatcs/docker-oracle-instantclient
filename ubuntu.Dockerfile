FROM ubuntu
RUN apt-get update && \
    apt-get install telnet libaio1 -y
     