# Python nlp docker image

## Include

+ nltk
+ ipython
+ numpy

## Build for yourself

Because the default `dataset`'s location is /data, if you want to change it, you can build it by yourself.

```
>>> cd some-path
>>> git clone git@github.com:fatelei/Dockerfile.git
>>> cd Dockerfile/nlp
>>> docker build --build-arg dataset=/foo .
```

## Run

```
docker pull fatelei/pynlp
docker run -it --rm fatelei/pynlp
```
