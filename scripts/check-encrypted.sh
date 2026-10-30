#!/usr/bin/env bash
# Fails if index.html contains readable financial data.
set -e
for s in "358,403" "134,512" "9691651330" "Grand Parade" "ryczałt"; do
  if grep -q "$s" index.html; then echo "ERROR: index.html contains plaintext ('$s'). Re-encrypt before committing."; exit 1; fi
done
if git ls-files | grep -q '^private/'; then echo "ERROR: private/ is tracked by git."; exit 1; fi
echo "OK: index.html is encrypted and private/ is not tracked."
