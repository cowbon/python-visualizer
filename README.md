# python-visualiser

## Setup

This package depends on NumPy and Matplotlib.
```shell
sudo apt-get install python-numpy
sudo apt-get install python-matplotlib
```

## Run

Usage:
```shell
./make.sh FILENAME
```

Plots the Fast Fourier Transform data for a **mono** WAV file into image files, then uses ffmpeg to mix the audio with
the images.

You can execute `importer.py` to convert a stereo WAV file to mono.

It will output thousands of PNG images into the folder from which it is run, so make sure you're not running low on disk
space before setting it going. The output video file will have the same name as the WAV file, with an mp4 extension.

It's also worth noting that this is in no way a real-time application. On my machine, it processes 1 second of audio around
every 4 seconds, but YMMV. It was written as a proof of concept for an audio visualisation project for which I ended up using
an IC connected to an Arduino rather than this.
