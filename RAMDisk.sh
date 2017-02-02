#!/bin/bash
mkdir /mnt/ramdisk
mount -t ramfs -o size=4G ramfs /mnt/ramdisk
