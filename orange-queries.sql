TRUNCATE `orange-tax_roll`;
load data local infile '/home/waleed/properties/tmp/TaxPaymentTape.txt'
replace into table `orange-tax_roll`
fields terminated by ',' 
lines terminated by '\n' ignore 1 lines;

TRUNCATE `orange-tax_del`;
load data local infile '/home/waleed/properties/tmp/DelinquentRealEstateTaxData.csv'
replace into table `orange-tax_del`
fields terminated by ',' 
lines terminated by '\n' ignore 1 lines;

TRUNCATE `orange-parcel`;
load data local infile '/home/waleed/properties/tmp/orange.csv'
replace into table `orange-parcel`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

UPDATE `orange-parcel` SET `Situs Street Type` = REPLACE(`Situs Street Type`, "BL", "BLVD");

UPDATE `orange-parcel` SET `Situs Street Type` = REPLACE(`Situs Street Type`, "AV", "AVE");

UPDATE `orange-parcel` SET `Situs Street Type` = REPLACE(`Situs Street Type`, "CI", "CIR");

UPDATE `orange-parcel` SET `Situs Street Type` = REPLACE(`Situs Street Type`, "WA", "WAY");

