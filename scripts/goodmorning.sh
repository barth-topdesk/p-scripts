#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<meta http-equiv=\"refresh\" content=\"0; URL=/\">"
echo "Hello"
echo "tx 10:44:40" | sudo cec-client RPI -s -f /var/log/cec/cec.log >> /dev/null
sudo /home/pi/kaku/raspKaku/kaku 1 A on
