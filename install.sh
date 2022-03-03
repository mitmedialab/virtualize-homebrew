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
bin/brew install the_silver_searcher

echo "homebrew installed"

exit


## Notes:
## maybe we should have a list of brew packages that need to be installed for a given project?
