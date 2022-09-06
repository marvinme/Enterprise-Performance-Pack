#!/usr/bin/env bash

echo "Building Java..."
mvn clean package -DskipTests
echo "Building Java - DONE"

echo "Building docker containers..."
docker login container-registry.oracle.com
docker build -f ./Dockerfiles/Dockerfile.oraclejdk8 -t localhost/primes:oraclejdk8 .
docker build -f ./Dockerfiles/Dockerfile.oraclejdkperf -t localhost/primes:oraclejdkperf .

echo "Docker docker containers - DONE"
