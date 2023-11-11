#!/bin/bash

set -euxo pipefail

#ensure non-interactive updates
export DEBIAN_FRONTEND=noninteractive

sudo apt-get -yq install git-all libfuse2 zsh