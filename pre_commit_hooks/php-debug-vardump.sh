#!/bin/sh
VAR=$(git diff --cached | php -w | grep -Pw "[^a-z0-9_]var_dump(?=\(| )")
if [ ! -z "$VAR" ]; then
  echo "You've left a var_dump in one of your files! Aborting commit..."
  exit 1
fi
exit 0