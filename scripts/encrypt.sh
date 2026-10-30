#!/usr/bin/env bash
# Usage: STATICRYPT_PASSWORD='...' ./scripts/encrypt.sh
set -e
: "${STATICRYPT_PASSWORD:?Set STATICRYPT_PASSWORD (ask Ramy, never write it to a file)}"
npx --yes staticrypt@3.5.4 private/dashboard.html -p "$STATICRYPT_PASSWORD" -d .staticrypt-out --remember 30 \
  --template-title "Ramy – Finance" --template-instructions "Private dashboard. Enter the password." --template-button "Open"
mv .staticrypt-out/dashboard.html index.html && rm -rf .staticrypt-out
./scripts/check-encrypted.sh
