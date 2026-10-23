# split-the-flac

Split a single FLAC album image into individual tracks using a CUE sheet, and tag the tracks with
metadata from that sheet.

It's a simple convenient tool that calls `shnsplit` and `cuetag` on the files found in the current
working directory.


## Why?

I simply couldn't remember the right options and arguments to `shnsplit` and `cuetag`, and wanted
something with a more user-friendly CLI interface. Now I need to remember exactly 0 options and
arguments.


## How to install

Install dependencies, e.g. on Ubuntu:

```sh
sudo apt-get install python3 shntool cuetools flac curl
```

Download and install `split-the-flac`:

```sh
curl -fLo split-the-flac \
  https://raw.githubusercontent.com/mikegerber/split-the-flac/main/split-the-flac
sudo install -m 755 split-the-flac /usr/local/bin/split-the-flac
```

You can now run `split-the-flac` from the directory containing your FLAC and CUE files.


## How to use

The script expects to see exactly one FLAC and one CUE file in the working directory. If you have
`example.flac` and `example.cue` in the current working directory, simply call:

```
split-the-flac
```

This yields `01 - some title.flac`, `02 - some other title.flac` etc. The split tracks are written
to the current directory. The original FLAC and CUE files are kept unchanged.
