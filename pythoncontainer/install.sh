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
apt-get install -y git screen htop wget bzip2 nano
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# INSTALL MINICONDA
wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O Miniconda.sh
bash Miniconda.sh -b
rm -rf Miniconda.sh python-setup.sh 

export PATH="/root/miniconda/bin:$PATH"

# INSTALL PYTHON LIBRARIES
conda install ipython-notebook
conda install scipy
conda install matplotlib
conda install seaborn
conda install pandas
conda install pytables
conda install bcolz
conda install blaze
pip install plotly
pip install cufflinks
