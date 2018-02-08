#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "<meta http-equiv=\"refresh\" content=\"0; URL=/\">"
echo "Setting thermosmart to $TEMP"
OIFS="$IFS"
IFS="${IFS}&"
set $QUERY_STRING
Args="$*"
IFS="$OIFS"
echo $Args
TEMP=""
for i in $Args ;do
	IFS="${OIFS}="
	set $i
	IFS="${OIFS}"
	case $1 in
		temp) TEMP="`echo $2 | sed 's|[\]||g' | sed 's|%20| |g'`"
			;;
#		*)     echo "<hr>Warning:"\
#                            "<br>Unrecognized variable \'$1\' passed by FORM in QUERY_STRING.<hr>"
#			;;
	esac
done
echo $TEMP
curl -X POST https://maker.ifttt.com/trigger/thermosmart_temp/with/key/bWKdSDHugWJ46fJgj4gIt0WO4j2ppy_6AScdH4i6n-_ -H "Content-Type: application/json" -d "{\"value1\": $TEMP}"
