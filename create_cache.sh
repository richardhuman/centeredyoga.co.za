#!/bin/sh

BASE="http://localhost:3000"
TMP=tmp/wget
mkdir -p $TMP

wget -O ${TMP}/index.wget $BASE/index
wget -O ${TMP}/index.wget $BASE/
wget -O ${TMP}/about.wget $BASE/about
wget -O ${TMP}/classes.wget $BASE/classes
wget -O ${TMP}/private_lessons.wget $BASE/private_lessons
wget -O ${TMP}/contact.wget $BASE/contact
wget -O ${TMP}/principles.wget $BASE/principles




