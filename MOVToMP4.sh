#!/bin/bash
ffmpeg -i "$i" -vcodec h264 -acodec copy $(basename "${i/.mov}").mp4
