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

ADD install.sh /
RUN chmod u+x /install.sh

ADD notebook.sh /
RUN chmod u+x /notebook.sh

RUN /install.sh

ADD Interactive_Widgets_Jupyter.ipynb /notebooks/

CMD /notebook.sh PORT
