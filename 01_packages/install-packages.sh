#!/bin/bash

if command -v pacman &>/dev/null; then
  echo "pacman detected"
  echo "installing packages from pacman.pkglist.txt..."
  pacman -S - <./pacman.pkglist.txt
  exit 0
fi

if command -v brew &>/dev/null; then
  echo "homebrew detected"
  echo "installing packages from brew.pkglist.txt..."
  xargs brew install <./brew.pkglist.txt
  exit 0
fi

echo "no supported package manager detected"
