# python-visualiser

It was written as a proof of concept for an audio visualization project.

## Setup

This package depends on NumPy and Matplotlib.
```shell
sudo apt-get install python-numpy
sudo apt-get install python-matplotlib
```

In addition, you need `ffmpeg` to mix the audio with generated images:
```shell
sudo apt-get install ffmpeg
```

## Run

Usage:
```shell
./make.sh FILENAME
```

Plots the Fast Fourier Transform data for a **mono** WAV file into image files.
You can execute `importer.py` to convert a stereo WAV file to mono.

It will output thousands of PNG images into the directory from which it is run,
so make sure you're not running low on disk space before setting it going.
