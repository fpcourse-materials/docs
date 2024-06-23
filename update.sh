#!/usr/bin/env sh
if [ "$1" = "" ]
then
  git commit -am "Update"
else
  git commit -am "$1"
fi
git push origin main:main
