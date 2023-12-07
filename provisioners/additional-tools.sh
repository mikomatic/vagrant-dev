#!/bin/bash

set -euxo pipefail

#ensure non-interactive updates
export DEBIAN_FRONTEND=noninteractive

# libz-dev: for graalvm native compilation
sudo apt-get -yq install git-all libfuse2 zsh libz-dev
