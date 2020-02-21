#!/usr/bin/env bash

# make sure apt database is up-to date
sudo apt-get update

#start busybox 
sudo nohup busybox httpd -f -p 1234 &

sudo cat>>index.html<<EOF
<HTML>
<BODY>
This is a web server $(hostname)
</BODY>
</HTML>
EOF
