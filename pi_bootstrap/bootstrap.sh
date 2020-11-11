#!/bin/sh

# Dev tools
apt-get -y install emacs-nox

# Sensor polling
apt-get -y install python3.7
apt-get -y install python3-pip
apt-get -y install libglib2.0-dev
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
