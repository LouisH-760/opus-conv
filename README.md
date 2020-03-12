# opus-conv
Convert stuff to opus

---
## opus.py
### Syntax
- `python3 opus.py in out`
    - `in`: the folder that holds the files to convert/copy
    - `out`: the folder to which everything will be outputed

### Description
This script will convert all the files of specified formats to opus, and place them in the output folder while preserving the folder structure of the input folder. You can put a folder that doesn't exist as output, and it will be created. All files that won't be converted to opus will simply be copied, while still preserving the original folder structure.

### Dependencies:
- `ffmpeg` (`ffmpeg-python`): [github repo](https://github.com/kkroening/ffmpeg-python)
- `os`, `sys`, `shutil`

---
## opus.sh
### Syntax
- `bash opus.sh in` or `./opus.sh in`
    - `in`: the folder that holds the files to convert

### Description
This script will convert all flac files in a folder to opus with a bitrate of 160k. The files will be put in the same folder as the original flac files, **which will be removed once the conversion is done**. This allows to basically "shrink" a music folder in place while preserving all other files (lossy music, cover art, cue files). This can be useful if you have a folder of flac files that you want to put on a mobile device and have a copy of the lossless files elsewhere
