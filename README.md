# ipynb-docker
IPython Notebook Servers in Docker Containers

This repository contains all ingredients to run a **Flask Web application** that starts multiple **Docker containers which in turn run different IPython Notebook servers** (cf. http://ipython.org).

You can see the **application** in action under http://docker.quant-platform.com.

Note, however, that this app runs on the smallest ***DigitalOcean droplet** (cf. https://www.digitalocean.com/?refcode=fbe512dd3dac). When setting up such a droplet it is recommended to use the latest version of **Ubuntu**.

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

In order to run the Python Flask application on a server, you have to **first build two Docker containers**.

The first one is a basic **Ubuntu** container with some **Python** in it (assuming you are in the repo folder):

```
cd pythoncontainer
docker build -t pythoncontainer .
```


The second, which relies on the first, adds the **Notebook Server functionality**.

```
cd ../ipyserver
docker build -t ipyserver
```


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

http://www.pythonquants.com \| analytics@pythonquants.com \|
http://twitter.com/dyjh

**Python Quant Platform** \| http://quant-platform.com

**Derivatives Analytics with Python (Wiley Finance)** \|
http://eu.wiley.com/WileyCDA/WileyTitle/productCd-1119037999.html

**Python for Finance (O'Reilly)** \|
http://shop.oreilly.com/product/0636920032441.do





