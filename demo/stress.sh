#!/usr/bin/env bash

hey -z 20m http://localhost:8083/primes?upperBound=99999 &
hey -z 20m http://localhost:8084/primes?upperBound=99999 &
