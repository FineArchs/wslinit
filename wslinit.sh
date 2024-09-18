#!/bin/bash

TMP_DIR="/tmp/wslinit"
BIN_DIR="$HOME/bin"
mkdir -p "$BIN_DIR"

# libarchive-tools for bsdtar
sudo apt install libarchive-tools git gh

# nvm and nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
nvm use node

# win32yank
curl -L "https://github.com/equalsraf/win32yank/releases/download/v0.1.1/win32yank-x64.zip" | bsdtar -xvf - -C "$BIN_DIR" "win32yank.exe"
echo "win32yank.exe has been installed to $BIN_DIR"
