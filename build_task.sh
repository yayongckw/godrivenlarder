#!/usr/bin/env bash
set -e
REPO="yayongckw/godrivenlarder"
TAG="bright-harbor-cosmic-badger"
LIB="dry-sulfur.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
