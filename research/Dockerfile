FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update
RUN apt-get --yes install protobuf-compiler python-pil python-lxml python-tk git
RUN pip install Cython contextlib2

RUN groupadd tensorflow
RUN useradd --gid tensorflow --shell /bin/bash tensorflow
USER tensorflow:tensorflow

VOLUME /home/tensorflow/research
ENV PYTHONPATH=$PYTHONPATH:/home/tensorflow/research:/home/tensorflow/research/slim
