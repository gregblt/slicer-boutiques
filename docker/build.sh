#!/bin/bash

cd "${0%/*}"
docker build -t slicer .
docker tag slicer micheletgregory/slicer:4.8.1
docker push micheletgregory/slicer:4.8.1
