#!/bin/bash
for i in *WAV ; do
	ffmpeg -i "$i" -acodec flac ./FLAC/$(basename ${i%".WAV"}).flac
	sleep 3
done
