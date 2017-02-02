#!/bin/bash
shopt -s globstar
echo "Filename, SHA1 Hash" > output_audio.csv
echo "Enumerating audio files"
for i in **/*.WAV ; do
	echo "Found file ${i}"
	echo -en ${i} >> output_audio.csv
	echo -en "," >> output_audio.csv
	echo "Calculating SHA1 Hash"
	hash=$(openssl sha1 ${i})
	hash=$(echo -en ${hash} | sed 's/^.*=/=/')
	echo -en ${hash:2} >> output_audio.csv
	echo " " >> output_audio.csv
	echo "Saving to file..."
	sleep 1
done
for j in **/*.wav ; do
	echo "Found file ${j}"
	echo -en ${j} >> output_audio.csv
	echo -en "," >> output_audio.csv
	echo "Calculating SHA1 Hash"
	hash=$(openssl sha1 ${j})
	hash=$(echo -en ${hash} | sed 's/^.*=/=/')
	echo -en ${hash:2} >> output_audio.csv
	echo " " >> output_audio.csv
	echo "Saving to file..."
	sleep 1
done
for k in **/*.flac ; do
	echo "Found file ${k}"
	echo -en ${k} >> output_audio.csv
	echo -en "," >> output_audio.csv
	echo "Calculating SHA1 Hash"
	hash=$(openssl sha1 ${k})
	hash=$(echo -en ${hash} | sed 's/^.*=/=/')
	echo -en ${hash:2} >> output_audio.csv
	echo " " >> output_audio.csv
	echo "Saving to file..."
	sleep 1
done
for l in **/*.mp3 ; do
	echo "Found file ${l}"
	echo -en ${l} >> output_audio.csv
	echo -en "," >> output_audio.csv
	echo "Calculating SHA1 Hash"
	hash=$(openssl sha1 ${l})
	hash=$(echo -en ${hash} | sed 's/^.*=/=/')
	echo -en ${hash:2} >> output_audio.csv
	echo " " >> output_audio.csv
	echo "Saving to file..."
	sleep 1
done
for m in **/*.aif ; do
	echo "Found file ${m}"
	echo -en ${m} >> output_audio.csv
	echo -en "," >> output_audio.csv
	echo "Calculating SHA1 Hash"
	hash=$(openssl sha1 ${m})
	hash=$(echo -en ${hash} | sed 's/^.*=/=/')
	echo -en ${hash:2} >> output_audio.csv
	echo " " >> output_audio.csv
	echo "Saving to file..."
	sleep 1
done
echo "Done!"
