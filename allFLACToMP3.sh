#!/bin/bash
for i in *flac ; do
	ffmpeg -i "$i" -acodec libmp3lame ../MP3/$(basename ${i%".flac"}).mp3
	sleep 3
done
