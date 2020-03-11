#!/bin/bash
# separator on line end to handle files with spaces in them
IFS=$'\n'
# extension to convert to
# put in whatever WITH A POINT
# that would make the script name weird though the point is to do opus isn't it
ext=".opus"
# only does flac files:
#	lossy to lossy is unwanted behavior
#	flac is love, flac is life
for i in $(find $1 | grep -E "\.flac$")
do
	# actual conversion, i'm no ffmpeg guru so its basic
	# 160k bitrate as its what i was told to use
	# the sampling rate shouldn't matter but you never know
	ffmpeg -i "$i" -b:a 160k -ar 48000 "${i%.*}$ext"
	# removing the original flac file once it is done to save space
	# comment this line out if necessary
	rm $i
done
