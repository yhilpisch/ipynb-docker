#!/bin/bash

# Script to Start
# Jupyter Notebook Server
#
# Dr. Yves J. Hilpisch
# The Python Quants GmbH
# 


PORT = expr $1

ipython notebook --no-browser --port $PORT --ip=*
