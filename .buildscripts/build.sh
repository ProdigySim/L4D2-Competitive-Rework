#!/bin/bash
set -ev

cd addons/sourcemod/scripting
echo $(pwd)
ls .
./compile.sh
