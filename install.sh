#!/bin/bash

if [[ "${BASH_SOURCE-}" != "$0" ]]; then
    echo "You cannot source this script. Run it as ./$0" >&2
    exit 33
fi

VIRTUALIZE_HOMEBREW_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE}" )" &> /dev/null && pwd )

cd $VIRTUALIZE_HOMEBREW_DIR
git clone https://github.com/Homebrew/brew
cd brew
mkdir $VIRTUALIZE_HOMEBREW_DIR/homebrew
bin/brew config --prefix $VIRTUALIZE_HOMEBREW_DIR/homebrew
#rm -rf $VIRTUALIZE_HOMEBREW_DIR/brew  # FIXME uncomment when done debugging
bin/brew install the_silver_searcher

echo "brew installed"

exit


## Notes:
## we might be able to just do normal install and use the `brew config --prefix` command
## instead of cloning and building from the repo
## don't forget the .gitignore dir if ^^^
## maybe we should have a list of brew packages that need to be installed for a given project?
