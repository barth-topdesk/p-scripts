#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<meta http-equiv=\"refresh\" content=\"0; URL=/\">"
echo "Resuming thermosmart normal schedule"
curl -X POST https://maker.ifttt.com/trigger/thermosmart_switch/with/key/bWKdSDHugWJ46fJgj4gIt0WO4j2ppy_6AScdH4i6n-_ 
