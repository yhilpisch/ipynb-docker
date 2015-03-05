#!/bin/bash

# Script to Start
# IPython Notebook Server
#
# Dr. Yves J. Hilpisch
# The Python Quants GmbH
# 


PORT = expr $1

ipython notebook --no-browser --port $PORT --ip=* --pylab=nbagg
