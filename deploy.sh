#!/bin/sh

HOST=196.220.57.51
USER=centeredyogaco95
PASSWORD=hgh2ihuu919uw

if [ "$1" == "all" ]; then
    ncftpput -u ${USER} -p ${PASSWORD} -R ${HOST} httpdocs ./public/*
else
    ncftpput -u ${USER} -p ${PASSWORD} ${HOST} httpdocs ./public/*html
    ncftpput -u ${USER} -p ${PASSWORD} ${HOST} httpdocs/stylesheets ./public/stylesheets/cached-main.css
    ncftpput -u ${USER} -p ${PASSWORD} ${HOST} httpdocs ./public/.htaccess
fi