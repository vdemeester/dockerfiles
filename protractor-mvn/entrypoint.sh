#!/bin/bash

source /etc/environment

export HTTP_PROXY=$HTTP_PROXY
export HTTPS_PROXY=$HTTPS_PROXY
export FTP_PROXY=$FTP_PROXY
export NO_PROXY=$NO_PROXY
export http_proxy=$http_proxy
export https_proxy=$https_proxy
export ftp_proxy=$ftp_proxy
export no_proxy=$no_proxy

exec "$@"
