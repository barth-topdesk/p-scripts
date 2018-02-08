#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<meta http-equiv=\"refresh\" content=\"0; URL=/\">"
echo "Turning on all lights"
sudo /home/pi/kaku/raspKaku/kaku 1 A on 
