#!/bin/bash
for i in *flac ; do
	ffmpeg -i "$i" ../WAVFromFLAC/$(basename ${i%".flac"}).wav
	sleep 3
done
