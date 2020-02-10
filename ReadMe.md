# A Docker image based on Ubuntu with Docker installed

```
docker build --tag johnmorsley/ubuntu-with-docker .
```

```
docker run -it ubuntu-with-docker bash
```

or 

```
winpty docker run -it ubuntu-with-docker bash
```

## Push image to Docker Hub

```
docker push johnmorsley/ubuntu-with-docker
```
