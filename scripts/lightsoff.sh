#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<meta http-equiv=\"refresh\" content=\"0; URL=/\">"
echo "Turning off all lights"
sudo /home/pi/kaku/raspKaku/kaku 1 A off
