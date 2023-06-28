FROM ubuntu:23.04

# LABEL about the custom image
LABEL maintainer="mario@epcc.ed.ac.uk"
LABEL version="0.1"
LABEL description="This is a sample docker image to perform a data ingest"

# Update Ubuntu Software repository
RUN apt update

# Install unzip
RUN apt-get install unzip

# Map the current working directory to /target using:
#
#  docker run --rm --volume $(pwd):/target eidf-data-ingest
#
# It expects to find the data file in the same directory.


# Test unpacking of the data
CMD unzip -l /target/JobsAcUk.zip | head > /target/out.txt

