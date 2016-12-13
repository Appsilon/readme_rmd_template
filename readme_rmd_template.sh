#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

init () {
  echo "Initializing with templates..."
  cp -Rnv $DIR/templates/* .
  echo "All done."
  exit 0
}

update () {
  echo "Updating templates. This overwrites all files!"
  cp -v $DIR/templates/docs/styles.css ./docs/styles.css
  echo "All done."
  exit 0
}

usage () {
  echo "USAGE: $0 init          - copy template files to current location."
  echo "       $0 update-styles - update github-pages stylesheet."
  echo "       $0 help          - prints this information."
  exit 1
}

if [ "$#" -ne 1 ]; then
  usage
fi

COMMAND=$1

if [ $COMMAND = "help" ]; then
  usage
fi

if [ $COMMAND = "init" ]; then
  init
fi

if [ $COMMAND = "update-styles" ]; then
  update
fi

usage
