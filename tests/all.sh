#!/bin/bash

# Setup
ORIGINAL_DIR=`pwd`
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR

./update-all.sh
./build-cascade.sh
./clean-cascade.sh

# back to where we were
cd $ORIGINAL_DIR
