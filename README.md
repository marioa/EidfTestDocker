# EIDF Test Docker Image
Publishing a Test Docker image for the [*Edinburgh Internationa Data Facility* (EIDF) service](https://www.ed.ac.uk/edinburgh-international-data-facility).

## Docker commands

I need to remember these:

### Build a docker image

```bash
$ docker build -t eidf-data-ingest .
```

### Run the docker image

```bash
$ docker run -it eidf-data-ingest
```

### Run and remove the image

```bash
$ docker run --rm eidf-data-ingest
```

### Run images with volumes

```bash
$ docker run --rm --volume $(pwd)/input_data:/input_data \
                  --volume $(pwd)/output_data:/output_data eidf-data-ingest
```

