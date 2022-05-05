#!/bin/bash

# If any commands fail, fail the script immediately.
set -ex

wget https://github.com/madler/zlib/archive/refs/tags/v1.2.11.tar.gz -O /tmp/zlib-1.2.11.tar.gz
tar -xvf /tmp/zlib-1.2.11.tar.gz --directory /tmp

# Copy the directory into the correct place
mv -v /tmp/zlib-1.2.11 $1
