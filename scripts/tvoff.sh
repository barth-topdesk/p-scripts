#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<meta http-equiv=\"refresh\" content=\"0; URL=/\">"
echo "Turning TV off"
echo "tx 1F:36" | sudo cec-client RPI -s -f /var/log/cec/cec.log >> /dev/null
