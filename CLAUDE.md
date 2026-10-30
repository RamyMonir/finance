# Project: Ramy – Finance & House dashboard (GitHub Pages)

Repo: https://github.com/RamyMonir/finance (public)
Live site: https://ramymonir.github.io/finance/

## What this is
A private, password-protected static dashboard (StatiCrypt, AES-256).
- `index.html` – the ENCRYPTED page. This is the only page that goes to GitHub.
- `private/dashboard.html` – the UNENCRYPTED source. Local only, git-ignored.
- `private/*.json` – the data behind the dashboard (local only).
- `scripts/encrypt.sh` – re-encrypts `private/dashboard.html` into `index.html`.
- `scripts/check-encrypted.sh` – safety check; run before every commit.

## Hard rules
1. NEVER commit or push anything in `private/`, or any unencrypted HTML. Check `git status` before committing.
2. Run `./scripts/check-encrypted.sh` before every commit. If it fails, stop and fix.
3. Never write the password to any file, commit message, or log. Ask Ramy for it and pass it only as the env var `STATICRYPT_PASSWORD` for one command.
4. If an unencrypted file was ever pushed: stop, tell Ramy, and rewrite history (the repo is public).

## First-time setup (do this now)
1. `git init -b main` (if needed) and `git remote add origin https://github.com/RamyMonir/finance.git`
2. `./scripts/check-encrypted.sh`
3. `git add index.html README.md CLAUDE.md .gitignore scripts/` → commit "Add encrypted finance dashboard" → `git push -u origin main`
4. Enable GitHub Pages from `main` / root:
   `gh api -X POST repos/RamyMonir/finance/pages -f "source[branch]=main" -f "source[path]=/"`
   (or Settings → Pages in the browser). Requires `gh auth login` as RamyMonir.
5. Wait ~1 minute, then confirm https://ramymonir.github.io/finance/ shows the password page.

## Updating the dashboard
1. Edit `private/dashboard.html` (data is inline in its <script>; JSON files in `private/` are the reference numbers).
2. Ask Ramy for the password, then `STATICRYPT_PASSWORD='…' ./scripts/encrypt.sh`
3. Commit only `index.html` (+ README/scripts if changed) and push.

## Context (for edits)
- Ryczałt: KIS interpretation (30 Jul 2026) confirms ryczałt is valid; services are PKWiU 62.01.1 → 12% rate. Dashboard defaults to 12% with a ~10,164 zł correction (Oct 2025–Sep 2026) in Dec 2026.
- Day rate 1,328.18 zł (Grand Parade, from 2 Nov 2026). Keep yearly JDG revenue ≤ 300,000 or ≥ ~308,500 zł (health contribution tiers).
- House data comes from the Google Sheet "DOM v2" (2 Oct 2026).
- Living costs in the cash plan are a 5,000 zł/month placeholder.
