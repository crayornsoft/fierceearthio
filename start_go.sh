#!/usr/bin/env bash
set -e
LIB="flat-butte.a"
TAG="gentle-comet-calm-comet"
REPO="crayornsoft/fierceearthio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
