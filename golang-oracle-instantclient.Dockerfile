FROM golang
WORKDIR /app
ADD . /app
RUN apt-get update && \
    apt-get install unzip && \
    apt-get install libaio1
RUN bash ./third_party/oracle/oracle-instantclient.sh