#
# Script to Install
# Basic Python Components
#
# Dr. Yves J. Hilpisch
# The Python Quants GmbH
#


# GENERAL LINUX
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get upgrade -y
apt-get install -y aria2
apt-get install -y git
apt-get install -y python-pip
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# INSTALL MINICONDA
aria2c -s 16 -x 16 -k 30M http://repo.continuum.io/miniconda/Miniconda3-3.8.3-Linux-x86_64.sh -o Miniconda.sh
bash Miniconda.sh -b
rm -rf Miniconda.sh

export PATH="/root/miniconda3/bin:$PATH"

# INSTALL PYTHON LIBRARIES
conda install ipython-notebook
conda install matplotlib
conda install pandas
conda install pytables
conda install bcolz
conda install blaze
conda install jsonschema
