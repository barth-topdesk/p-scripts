#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "Turning down volume of TV"
echo "tx 10:44:42" | cec-client RPI -s -f /var/log/cec/cec.log >> /dev/null


