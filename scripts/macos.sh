#!/bin/bash

RED="\\033[0;31m"
NORMAL="\\033[0;39m"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CURA_PATH="/Applications/Cura.app/Contents/Resources"
CURA_MACHINES_PATH="$CURA_PATH/resources/definitions"

MPSM_DEFINITION_PATH="$DIR/../resources/definitions/mp_select_mini.def.json"

if [ ! -d "$CURA_PATH" ]; then
  echo -e "$RED*** Cura not found, please contact support: https://github.com/marchah/mp_select_mini/issues ***$NORMAL"
  exit 1
fi

if [ ! -d "$CURA_MACHINES_PATH" ]; then
  echo -e "$RED*** Cura definitions folder not found, please contact support: https://github.com/marchah/mp_select_mini/issues ***$NORMAL"
  exit 1
fi

if [ ! -f "$MPSM_DEFINITION_PATH" ]; then
  echo -e "$RED*** MP Select Mini definition file not found, please contact support: https://github.com/marchah/mp_select_mini/issues ***$NORMAL"
  exit 1
fi

echo "OK"

cp "$MPSM_DEFINITION_PATH" "$CURA_MACHINES_PATH/mp_select_mini.def.json"