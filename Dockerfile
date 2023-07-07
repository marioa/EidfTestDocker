FROM ubuntu

# LABEL about the custom image
LABEL org.opencontainers.image.source=https://github.com/marioa/EidfTestDocker
LABEL org.opencontainers.image.description="My EIDF test container image"
LABEL org.opencontainers.image.licenses=APACHE2.0
LABEL maintainer="mario@epcc.ed.ac.uk"
LABEL version="0.2"
LABEL description="This is a sample docker image to perform a data ingest"

# Update Ubuntu Software repository
RUN apt update

# Install unzip
RUN apt-get install unzip

# Entrypoint is the script that will covert the data to analytics ready data
COPY entrypoint.sh .
COPY resources.json .

WORKDIR .
ENTRYPOINT ["./entrypoint.sh"]
CMD ["--input /input_data/JobsAcUk.zip --output /output_data/data --output_metadata /output_data/metadata"]

