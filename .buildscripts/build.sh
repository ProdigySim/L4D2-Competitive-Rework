#!/bin/bash
set -ev

cd addons/sourcemod/scripting
mkdir -p compiled
for sourcefile in *.sp
do
  smxfile="`echo $sourcefile | sed -e 's/\.sp$/\.smx/'`"
  echo -e "\nCompiling $sourcefile ..."
  ./spcomp64 $sourcefile -ocompiled/$smxfile
done
