# EIDF Test Docker Image
Publishing a Test Docker image for the [*Edinburgh Internationa Data Facility* (EIDF) service](https://www.ed.ac.uk/edinburgh-international-data-facility).

## Docker commands

I need to remember these

```bash
# Build a docker instance
$ docker build -t eidf-data-ingest .
```

```bash
# Run bash on docker
$ docker run -it eidf-data-ingest
```

```bash
# Remove the command when it is done
$ docker run --rm -it eidf-data-ingest
```

```bash
# Mount the local directory to the VM
$ docker run --rm -it --volume $(pwd)/input_data:/input_data eidf-data-ingest
```

