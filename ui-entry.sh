#!/bin/bash

set -e

if [ ! -f "config.py" ]; then
  echo "There is no config.py file mapped. A new one will be copied to /opt/fts-ui volume as config.py.orig"
  cp config.py.orig -f /opt/fts-ui/config.py.orig
  exit -1
fi

python3 run.py