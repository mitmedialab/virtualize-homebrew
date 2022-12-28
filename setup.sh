#!/bin/bash

if [[ "${BASH_SOURCE-}" != "$0" ]]; then
    echo "You cannot source this script. Run it as ./$0" >&2
    exit 33
fi

VIRTUALIZE_HOMEBREW_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE}" )" &> /dev/null && pwd )

cd $VIRTUALIZE_HOMEBREW_DIR
git clone https://github.com/Homebrew/brew homebrew
cd homebrew
bin/brew config
bin/brew update-reset
bin/brew update
#bin/brew install curl  # some packages need this to install from source

echo "homebrew installed"

exit
