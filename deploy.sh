#!/bin/bash
# Simple deploy script - update REMOTE_URL before use
if [ ! -d .git ]; then
  git init
  git branch -M main
  git remote add origin https://github.com/vinay-0009/Stock-Data-
fi
git add .
git commit -m "Deploy: update site"
git push -u origin main --force
echo "Deployed. Enable GitHub Pages for this repo (main branch -> root)."
