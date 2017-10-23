#!/bin/bash

if [ $# -lt 1 ]; then
  echo "You must supply a mono-mixed wave file as the first argument."
  exit 1
fi

[[ -w frame_*.png ]] && rm frame_*.png

./plotvals.py $1 2

rm -f out.mp4
ffmpeg -framerate 24 -i frame_%*.png -i $1 out.mp4
