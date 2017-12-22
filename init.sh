#!/bin/bash

cur_path=`pwd`
sudo rm /etc/nginx/sites-enabled/nginx.conf
sudo ln -s "$cur_path/etc/nginx.conf" /etc/nginx/sites-enabled/nginx.conf
sudo service nginx restart

sudo mkdir /etc/gunicorn.d
sudo rm /etc/gunicorn.d/hello.py
sudo ln -s "$cur_path/etc/hello.py" /etc/gunicorn.d/hello.py
