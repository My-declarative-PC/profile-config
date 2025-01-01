#!/bin/bash

export PATH="$PATH:/var/lib/flatpak/exports/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/share/flatpak/exports/share"
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export FLAVOR="mocha"
export ACCENT="mauve"
export GTK_THEME=catppuccin-$ACCENT-$FLAVOR-standard+default

export EDITOR=/usr/bin/hx
export HELIX_RUNTIME=/var/lib/helix/runtime
export QT_STYLE_OVERRIDE=kvantum
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
