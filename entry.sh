#!/bin/bash

source /usr/local/bin/geant4.sh
./ddfusion ./custom.mac
cp neutron*.root output/
