# Jupyter & IPython Notebook Servers in Docker Containers

This repository contains all ingredients to run a **Python Flask Web application** that starts multiple **Docker containers which in turn run different IPython Notebook servers** (cf. http://ipython.org).

You can see the **application in action** under http://docker.quant-platform.com.

Note, however, that this app runs on the smallest **DigitalOcean droplet** (cf. https://www.digitalocean.com/?refcode=fbe512dd3dac). When setting up such a droplet it is recommended to use the latest version of **Ubuntu** in combination with **Docker** (cf. http://docker.com).

In addition, when setting up an environment make sure to have Python, Flask, Flask-WTF and Flask-SQLAlchemy installed. Best you install **Anaconda** first (cf. http://continuum.io/downloads) and do then:

```
sudo apt-get install python-pip
pip install flask-wtf
pip install flask-sqlalchemy
```

I assume that you have **cloned the repository** on an appropriate infrastructure:

```
git clone https://github.com/yhilpisch/ipynb-docker
``` 

## Docker Containers

In order to run the Python Flask Web application on a server, you have to **first build two Docker containers**.

The first one is a basic **Ubuntu** container with some **Python** in it (assuming you are in the repo folder):

```
cd pythoncontainer
docker build -t pythoncontainer .
```


The second, which relies on the first, adds the **Notebook Server functionality**. Built it via

```
cd ../jupserver
docker build -t jupserver .
```

for Jupyter Notebook.

## Flask Web app

Now go the the directory of the app and start the app:

```
cd ../serverapp
python run_app.py &
```

Your app should now be reachable under ```http://your-ip-address:8888```.

## Copyright, License & Disclaimer

© Dr. Yves J. Hilpisch \| The Python Quants GmbH

The code of this repository is BSD licensed (cf. http://opensource.org/licenses/BSD-3-Clause).

The code in this repository comes with no representations or warranties, to the extent
permitted by applicable law.

http://tpq.io \| team@tpq.io \|
http://twitter.com/dyjh

**Python Quant Platform** \| http://quant-platform.com

**Derivatives Analytics with Python (Wiley Finance)** \|
http://derivatives-analytics-with-python.com

**Python for Finance (O'Reilly)** \|
http://python-for-finance.com





