#!/bin/bash

cd /home/waleed/properties/tmp/polk
wget ftp://ftp.polkpa.org/AppraisalData/ftp_owner.zip -O owner.zip
wget ftp://ftp.polkpa.org/AppraisalData/ftp_parcel.zip -O parcel.zip
wget ftp://ftp.polkpa.org/AppraisalData/ftp_sales.zip -O sales.zip
wget ftp://ftp.polkpa.org/AppraisalData/ftp_land.zip -O land.zip
wget ftp://ftp.polkpa.org/AppraisalData/ftp_site.zip -O site.zip
wget ftp://ftp.polkpa.org/AppraisalData/ftp_bldg.zip -O bldg.zip
unzip -o owner.zip
unzip -o parcel.zip
unzip -o sales.zip
unzip -o land.zip
unzip -o site.zip
unzip -o bldg.zip
 
mysql -u waleed -pahmed31 properties < /home/waleed/properties/polk-queries.sql
