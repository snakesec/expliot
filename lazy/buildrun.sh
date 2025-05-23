#!/bin/bash
#
# Script to uninstall, install and run expliot. This is useful for development
# purposes. Use in your virtual environment.

usage() {
    echo "Usage:> $0 <ex_dir>"
    echo ""
    echo "  <ex_dir> - Directory where the expliot code is located"
}

if [ $# -ne 1 ]; then
    usage
    exit 1
fi

EX_DIR=$1

if [ ! -d $EX_DIR ]; then
    echo "[!] Directory $EX_DIR does not exist!"
    exit 1
fi

pip3 uninstall expliot;pip3 install $EX_DIR;expliot
