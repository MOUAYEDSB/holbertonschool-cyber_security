#!/bin/bash

echo -n "$1" | sha256sum -c <(echo "$2  $1")
