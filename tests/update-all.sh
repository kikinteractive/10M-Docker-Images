#!/bin/bash

# Setup
ORIGINAL_DIR=`pwd`
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR/..

# Future add here more tests
cd base/build/php/5.6/
make update 
cd $SCRIPT_DIR/..
cd base/build/php/5.6/fpm/
make update

# back to where we were
cd $ORIGINAL_DIR
