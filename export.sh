#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

unzip -o "$1" customUI/customUI14.xml
code -w customUI/customUI14.xml
zip -u "$1" customUI/customUI14.xml
rm customUI/customUI14.xml
open "$1"
sleep 2
osascript ${DIR}/export_ppam.scpt
