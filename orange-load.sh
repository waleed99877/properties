#!/bin/bash

cd /home/waleed/properties/tmp
wget http://pt.octaxcol.com/Downloads/PropertyTax/TaxPaymentTape.zip -O TaxPaymentTape.zip
unzip -o TaxPaymentTape.zip
wget http://pt.octaxcol.com/Downloads/PropertyTax/DelinquentRealEstateTaxData.zip -O DelinquentRealEstateTaxData.zip
unzip -o DelinquentRealEstateTaxData.zip
mysql -u waleed -pahmed31 properties < /home/waleed/properties/orange-queries.sql
