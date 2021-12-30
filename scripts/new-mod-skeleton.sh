#!/usr/bin/env bash
f=$1

#if [ !$0 != 0 ] ; then
#  echo "usage new-mod-skeleton.sh <module folder name>"; exit 1;
#else
mkdir modules/$f
touch modules/$f/main.tf
touch modules/$f/outputs.tf
touch modules/$f/variables.tf
#fi