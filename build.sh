#!/bin/bash

nvm use 20
rm -rf build
yarn
yarn build
docker build . -t ewn/ewn-docs:latest .
docker push ewn/ewn-docs:latest

