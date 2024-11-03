#!/bin/bash

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/var/lib/flatpak/exports/bin

export FLAVOR="mocha"
export ACCENT="mauve"
export GTK_THEME=catppuccin-$ACCENT-$FLAVOR-standard+default

export EDITOR=/usr/bin/hx
export HELIX_RUNTIME=/var/lib/helix/runtime
export QT_STYLE_OVERRIDE=kvantum
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
