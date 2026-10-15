#!/usr/bin/env bash
# Rebuild notes.pdf (two passes for references/TOC). Usage: bash build.sh
cd "$(dirname "$0")"
TEX="${TEX:-pdflatex}"
for i in 1 2; do "$TEX" -interaction=nonstopmode -halt-on-error notes.tex > build.log 2>&1 || { echo "LaTeX error, see build.log"; exit 1; }; done
echo "built notes.pdf $(date +%H:%M:%S)"
