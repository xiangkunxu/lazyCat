#########################################################################
# File Name: downloads.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Wed 03 Jan 2018 12:35:13 PM CST
#########################################################################
#!/bin/bash

sdcc timer.c
packihx timer.ihx > timer.hex
objcopy -I ihex -O binary timer.hex timer.bin
