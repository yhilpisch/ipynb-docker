#!/bin/bash

# Script to Start
# Jupyter Notebook Server
#
# Dr. Yves J. Hilpisch
# The Python Quants GmbH
# 


PORT = expr $1
PW = expr $2

echo -n $PW | sha1sum | awk '{print "c.NotebookApp.password = '\''sh1:" $1 "'\''"}' >> ipython_notebook_config.py /root/.ipython/profile_default/

ipython notebook --no-browser --port $PORT --ip=*
