#!/usr/bin/env bash
# Keep notes.pdf current: every 2 min, rebuild if notes.tex or any figure is newer than the PDF.
cd "$(dirname "$0")"
while true; do
  if [ ! -f notes.pdf ] || [ -n "$(find notes.tex figs -newer notes.pdf -print -quit)" ]; then bash build.sh; fi
  sleep 120
done
