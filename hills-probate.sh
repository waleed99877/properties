#!/bin/bash

PROBATE_DIR="/home/waleed/properties/tmp/hills-probate"
SCRIPT="/home/waleed/properties/hills-probate.php"
#DATE=$(date -d "2 days ago 06:00" +%Y%m%d)
DATE=$(date -d yesterday +%Y%m%d)
URL="https://publicrec.hillsclerk.com/DailyNewCaseFilings/Probate/"
FILE="ProbateFiling_${DATE}.csv"

cd $PROBATE_DIR
wget -nc "${URL}${FILE}"
#echo "Loading file: ${PROBATE_DIR}/${FILE}"
if [ -f "${PROBATE_DIR}/${FILE}" ];
then
	php "$SCRIPT" "${PROBATE_DIR}/${FILE}"
fi



# CODE BELOW LOOPS THROUGH EACH FILE TO ADD TO DB
: <<'end_long_comment'

cd $PROBATE_DIR
wget -nc -nd -nH -np -r -R 'index.html' https://publicrec.hillsclerk.com/DailyNewCaseFilings/Probate/

for f in "${PROBATE_DIR}"/*.csv;
do
	if [ -f "$f" ];
	then
		echo "Loading file: ${f}"
		php "$SCRIPT" "${f}"
	fi
done

end_long_comment
