#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "Turning up volume of TV"
echo "tx 10:44:41" | cec-client RPI -s -f /var/log/cec/cec.log >> /dev/null
