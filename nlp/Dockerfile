FROM hardbyte/python3:latest
MAINTAINER fatelei@gmail.com

LABEL name="py-nlp"
LABEL version=1.0.0
LABEL description="Python nlp"

# Install nltk, numpy, ipython
RUN pip install -U nltk numpy
RUN pip install -U ipython

ARG dataset=/data
VOLUME ['$dataset']

ENTRYPOINT ipython
