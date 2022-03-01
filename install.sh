#!/bin/bash

if [[ "${BASH_SOURCE-}" != "$0" ]]; then
    echo "You cannot source this script. Run it as ./$0" >&2
    exit 33
fi

# FIXME make sure we are in the right directory before proceeding

git clone https://github.com/Homebrew/brew homebrew
cd homebrew
bin/brew config
bin/brew install the_silver_searcher

echo "brew installed"

exit
