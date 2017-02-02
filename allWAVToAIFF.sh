#!/bin/bash
for i in *wav ; do
	ffmpeg -i "$i" ../AIFF/$(basename ${i%".wav"}).aif
	sleep 3
done
