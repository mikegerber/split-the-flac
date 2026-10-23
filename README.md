# split-the-flac

Split (and tag) the FLAC file according to the CUE file. It's a simple convenient tool that calls
`shnsplit` and `cuetag` on the files found in the current working directory.


## Why?

I simply couldn't remember the right options and arguments to `shnplit` and `cuetag`, and wanted
something with a more user-friendly CLI interface. Now I need to remember exactly 0 options and
arguments.


## How to use

If you have `example.flac` and `example.cue` in the current working directory, simply call:

```
split-the-flac
```

This yields `01 - some title.flac`, `02 - some other title.flac` etc.


## Requirements

- shntool (for `shnsplit`)
- cuetools (for `cuetag`)
