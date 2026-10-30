# Ramy – Finance & House dashboard

Private, password-protected dashboard (StatiCrypt, AES-256). The repository only contains encrypted data; without the password nobody can read it.

## Publish on GitHub Pages
1. On github.com/RamyMonir create a new repository, e.g. `finance` (public is fine – the content is encrypted).
2. Upload `index.html` (and this README). Do **not** upload any unencrypted copy.
3. Settings → Pages → Source: *Deploy from a branch* → `main` / `(root)` → Save.
4. After ~1 minute the site is at `https://ramymonir.github.io/finance/`.

## Updating the data
Ask Claude for a new encrypted `index.html` and replace the file in the repo.

To change the password yourself (keep the unencrypted file on your computer only):
```
npx staticrypt dashboard.html -p "NEW-LONG-PASSWORD" -d . --remember 30
```

## Notes
- "Remember me" keeps you logged in for 30 days on that device – don't tick it on shared computers.
- The page has a `noindex` tag, but the URL is still public: don't share it with the password together.
