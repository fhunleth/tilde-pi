#!/bin/sh

TARGETDIR=$1

# Clean up the cowsay cows
find $TARGETDIR/usr/share/cows -name "*.cow" | \
    grep -E -v '/default.cow$|/dragon.cow$|/kitty.cow$|/koala.cow$|/sheep.cow$|/stegosaurus.cow$|/turtle.cow$' | \
    xargs rm -f

# Misc. cleanup of target
rm -fr $TARGETDIR/usr/share/bash-completion
