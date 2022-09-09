FROM gitpod/workspace-full-vnc:2022-01-28-04-35-05

USER root 
# install dependencies
RUN apt-get update \
    && apt-get install -y firefox matchbox twm python-pyqt5 \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN pip install QtAwesome QtPy future
