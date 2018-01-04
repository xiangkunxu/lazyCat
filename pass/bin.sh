#########################################################################
# File Name: bin.sh
# Author: sky@pig
# mail:   im_tall@icloud.com
# Created Time: Thu 04 Jan 2018 10:24:50 AM CST
#########################################################################
#!/bin/bash

sdcc pass.c
packihx pass.ihx > pass.hex
objcopy -I ihex -O binary pass.hex pass.bin
