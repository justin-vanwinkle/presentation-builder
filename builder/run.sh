#!/bin/bash

set -e

USER_GID="$(stat -c '%g' /input/slides.md)"
USER_UID="$(stat -c '%u' /input/slides.md)"

groupadd -g "$USER_GID" user

useradd --shell /bin/bash -u "$USER_UID" -g "$USER_GID" -m user

chown -R user:user /reveal.js

sudo -u user rsync -a /reveal.js /output

# https://stackoverflow.com/a/20381373/586148
DIRECTORY_TO_OBSERVE="/input"
function block_for_change {
  inotifywait -r -e modify,move,create,delete /input
}

function build {
  sudo -u user rsync -a /input/res /output/res
  sudo -u user pandoc -V history=true -t revealjs -s /input/slides.md -o /output/index.html
}

build

pushd /output/; python -m SimpleHTTPServer 80

while block_for_change; do
  build
done
