#!/usr/bin/env bash
# Refresh the GitHub Pages site in docs/ from the current notes and notebooks.
cd "$(dirname "$0")"
PY="${PY:-../.venv/Scripts/python}"
bash build.sh
cp notes.pdf docs/notes.pdf
for nb in [0-9][0-9]_*.ipynb; do "$PY" -m jupyter nbconvert --to html "$nb" --output-dir docs >/dev/null 2>&1; done
echo "docs/ refreshed"
