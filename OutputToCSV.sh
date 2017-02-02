#!/bin/bash
shopt -s globstar
echo "Filename, SHA1 Hash" > output.csv
echo "Enumerating files..."
for i in **/*.R3D ; do
	echo "Found file ${i}"
	echo -en ${i} >> output.csv
	echo -en "," >> output.csv
	echo "Calculating SHA1 Hash"
	hash=$(openssl sha1 ${i})
	hash=$(echo -en ${hash} | sed 's/^.*=/=/')
	echo -en ${hash:2} >> output.csv
	echo " " >> output.csv
	echo "Saving to file..."
	sleep 1
done
echo "Done!"
