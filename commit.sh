#!/bin/sh

###################################
#      Linux commit script        #
###################################

# Remove built files:
if [ -d "./colloq-server/bin" ]; then
  rm -r ./colloq-server/bin
fi
if [ -d "./colloq-client/bin" ]; then
  rm -r ./colloq-server/bin
fi
echo "Removed build files."

git add ./*
git commit -m "$1"
echo "Commited files."

git push --all
echo "Pushed files."
