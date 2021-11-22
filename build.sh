#!/bin/bash
cp ~/.ssh/* .

docker build -t tjdalsckd/calibration:latest .

