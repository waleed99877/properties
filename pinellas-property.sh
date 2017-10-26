#!/bin/bash
MONTH=$(date +%m)
DAY=$(date +%d)
YEAR=$(date +%Y)

#echo "${YEAR}-${MONTH}-${DAY}"

#: <<'end_long_comment'
cd /home/waleed/properties/tmp/pinellas
wget -O allsales.csv "http://pcpao.org/pdeeds_out.php?strap=&type=0&spge=&splt=&fromDate=1990-01-01&toDate=${YEAR}-${MONTH}-${DAY}&rtype=c&submitButtonName=Submit+Query"
wget -O property_value.csv.gz  http://www.pcpao.org/data_extract/property_value.csv.gz
wget -O site_address.csv.gz  http://www.pcpao.org/data_extract/site_address.csv.gz
wget -O owner_mail.csv.gz http://www.pcpao.org/data_extract/owner_mail.csv.gz
wget -O sales.csv.gz http://www.pcpao.org/data_extract/sales.csv.gz
wget -O land.csv.gz http://www.pcpao.org/data_extract/land.csv.gz
wget -O parcel_value.csv.gz http://www.pcpao.org/data_extract/parcel_value.csv.gz
wget -O structural_elements.csv.gz http://www.pcpao.org/data_extract/structural_elements.csv.gz
wget -O permit.csv.gz http://www.pcpao.org/data_extract/permit.csv.gz
wget -O exemptions.csv.gz http://www.pcpao.org/data_extract/exemptions.csv.gz

gunzip -f property_value.csv.gz
gunzip -f site_address.csv.gz
gunzip -f owner_mail.csv.gz
gunzip -f sales.csv.gz
gunzip -f land.csv.gz
gunzip -f parcel_value.csv.gz
gunzip -f structural_elements.csv.gz
gunzip -f permit.csv.gz
gunzip -f exemptions.csv.gz

# REMOVE LAST LINE AND EXTRA NULL COLUMNS IN ALLSALES FILE
head -n -1 allsales.csv > allsales-clean.csv
mv -f allsales-clean.csv allsales.csv
cut -d, -f1-32 allsales.csv > allsales-cleaned.csv

#end_long_comment

mysql -u waleed -pahmed31 properties < /home/waleed/properties/pinellas-queries.sql
