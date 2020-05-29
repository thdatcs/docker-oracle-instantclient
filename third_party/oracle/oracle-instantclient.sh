#!/bin/sh
if [ ! -d "/var/oracle" ]; then
    mkdir /var/oracle
fi

unzip -o third_party/oracle/instantclient-basic-linux.x64-12.2.0.1.0.zip -d /var/oracle
unzip -o third_party/oracle/instantclient-sdk-linux.x64-12.2.0.1.0.zip -d /var/oracle

cp /var/oracle/instantclient_12_2/libclntsh.so.12.1 /var/oracle/instantclient_12_2/libclntsh.so
cp /var/oracle/instantclient_12_2/libclntshcore.so.12.1 /var/oracle/instantclient_12_2/libclntshcore.so

cp -p third_party/oracle/oci8.pc /usr/lib/pkgconfig
cp -p third_party/oracle/oci8.conf /etc/ld.so.conf.d
ldconfig