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
bin/brew install the_silver_searcher

echo "brew installed"

exit


## Notes:
## we might be able to just do normal install and use the `brew config --prefix` command
## instead of cloning and building from the repo
## rename homebrew install dir to just brew (to match the repo name)?
## don't forget the .gitignore dir if ^^^
## are man pages a thing?
## if we do keep installing by cloning the repo, colne the repo into one dir,
## then install into another dir and removing the cloned repo dir?
## maybe we should have a list of brew packages that need to be installed for a given project?
