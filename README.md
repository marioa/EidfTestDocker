# EIDF Test Docker Image
Publishing a Test Docker image for the [*Edinburgh Internationa Data Facility* (EIDF) service](https://www.ed.ac.uk/edinburgh-international-data-facility).

## Docker commands

I need to remember these:

```bash
# Build a docker instance
$ docker build -t eidf-data-ingest .
```

```bash
# Run docker
$ docker run -it eidf-data-ingest
```

```bash
# Remove the image when it is done
$ docker run --rm eidf-data-ingest
```

```bash
# Mount the local directory to the VM
$ docker run --rm --volume $(pwd)/input_data:/input_data \
                  --volume $(pwd)/output_data:/output_data eidf-data-ingest
```

