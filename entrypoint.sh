#!/usr/bin/bash

# Unzip the data.
unzip -q /input_data/JobsAcUk.zip -d /output_data/data/

# Copy the resource metadata
cp ./resources.json /output_data/metadata/

