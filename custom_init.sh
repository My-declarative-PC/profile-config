#!/bin/bash

if command -v fastfetch &> /dev/null; then
     clear
     fastfetch
fi

#
# Aliases
#

### ls
function ls {
     if command -v eza &> /dev/null; then
         eza -1 --icons "$@"
     else
         ls "$@"
     fi
}

function ll {
     ls -lh "$@"
}

function la {
     ll -a "$@"
}

function tree {
     if command -v eza &> /dev/null; then
         ls -T "$@"
     else
         tree "$@"
     fi
}

#
# Initializations
#

if command -v starship &> /dev/null; then
     eval "$(starship init bash)"
fi

if command -v zoxide &> /dev/null; then
     eval "$(zoxide init --cmd cd bash)"
fi
