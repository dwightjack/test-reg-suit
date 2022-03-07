#!/bin/bash
PACKAGES="${@:-"core layout"}"
for PACKAGE in $PACKAGES
do
  echo "Processing $PACKAGE"
  echo "- Building Storybook..."
  npx --no-install build-storybook -c ./packages/$PACKAGE/.storybook -o ./packages/$PACKAGE/dist-storybook --quiet || exit 1; 
  echo "- Grab screenshots..." 
  npx --no-install storycap --serverCmd "http-server ./packages/$PACKAGE/dist-storybook -s -p 9020" --outDir ./__screenshots__/$PACKAGE http://localhost:9020  || exit 1; 
done
echo "- Run visual regression tests..."
npx --no-install reg-suit run -c ./regconfig.json 
