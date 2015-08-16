#
# Docker Container for
# Jupyter Notebook Server
#
# Dr. Yves J. Hilpisch
# The Python Quants GmbH
#

FROM pythoncontainer

MAINTAINER yves

VOLUME /notebooks
WORKDIR /notebooks

ENV PORT 8888
ENV PW jupyter

ADD notebook.sh /
RUN chmod u+x /notebook.sh

ADD jup_cert.pem /root/.ipython/profile_default/
ADD ipython_notebook_config.py /root/.ipython/profile_default/
ADD /ipynbs/* /notebooks/

CMD /notebook.sh PORT PW
