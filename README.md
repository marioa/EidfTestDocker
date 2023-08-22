# EIDF Test Docker Image
Publishing a Test Docker image for the [*Edinburgh Internationa Data Facility* (EIDF) service](https://www.ed.ac.uk/edinburgh-international-data-facility).

## Docker commands

I need to remember these:

### Build a docker image

```bash
$ docker build -t eidf .
```

### Run the docker image

```bash
$ docker run -it eidf
```

### Run and remove the image

```bash
$ docker run --rm eidf
```

### Run images with volumes

```bash
$ docker run --rm --volume $(pwd)/input_data:/input_data \
                  --volume $(pwd)/output_data:/output_data eidf
```

### Push image to dockerhub

Publishing to the github package registry requires authentication so publishing at [dockerhub](https://hub.docker.com/repository/docker/marioant/eidf/general) instead.

```bash
$ docker login
$ docker tag eidf marioant/eidf
$ docker push marioant/eidf
```