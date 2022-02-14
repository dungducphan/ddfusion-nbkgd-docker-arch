#!/bin/bash

./build.sh
docker run -it --mount type=bind,src=`pwd`/output,dst=/home/build/Geant4/build/output dungphan90/dd-nbkgd:latest
/bin/bash
