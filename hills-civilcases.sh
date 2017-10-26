#!/bin/bash

CIVIL_DIR="/home/waleed/properties/tmp/hills-civilcases"
SCRIPT="/home/waleed/properties/hills-civilcases.php"
#DATE=$(date -d "2 days ago 06:00" +%Y%m%d)
DATE=$(date -d yesterday +%Y%m%d)
URL="https://publicrec.hillsclerk.com/DailyNewCaseFilings/CivilandFamilyLaw/"
FILE="CivilFiling_${DATE}.csv"

cd $CIVIL_DIR
wget -nc "${URL}${FILE}"
#echo "Loading file: ${CIVIL_DIR}/${FILE}"
if [ -f "${CIVIL_DIR}/${FILE}" ];
then
	php "$SCRIPT" "${CIVIL_DIR}/${FILE}"
fi



# CODE BELOW LOOPS THROUGH EACH FILE TO ADD TO DB
: <<'end_long_comment'

cd $CIVIL_DIR
wget -nc -nd -nH -np -r -R 'index.html' "${URL}"

for f in "${CIVIL_DIR}"/*.csv;
do
	if [ -f "$f" ];
	then
		echo "Loading file: ${f}"
		php "$SCRIPT" "${f}"
	fi
done

end_long_comment
