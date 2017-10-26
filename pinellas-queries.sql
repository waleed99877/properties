TRUNCATE `pinellas-allsales`;
load data local infile '/home/waleed/properties/tmp/pinellas/allsales-cleaned.csv'
replace into table `pinellas-allsales`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

DELETE FROM `pinellas-allsales` WHERE `buyer_name_1` = '********';

TRUNCATE `pinellas-property_value`;
load data local infile '/home/waleed/properties/tmp/pinellas/property_value.csv'
replace into table `pinellas-property_value`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-site_address`;
load data local infile '/home/waleed/properties/tmp/pinellas/site_address.csv'
replace into table `pinellas-site_address`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-owner_mail`;
load data local infile '/home/waleed/properties/tmp/pinellas/owner_mail.csv'
replace into table `pinellas-owner_mail`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-sales`;
load data local infile '/home/waleed/properties/tmp/pinellas/sales.csv'
replace into table `pinellas-sales`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-land`;
load data local infile '/home/waleed/properties/tmp/pinellas/land.csv'
replace into table `pinellas-land`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-parcel_value`;
load data local infile '/home/waleed/properties/tmp/pinellas/parcel_value.csv'
replace into table `pinellas-parcel_value`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-structural_elements`;
load data local infile '/home/waleed/properties/tmp/pinellas/structural_elements.csv'
replace into table `pinellas-structural_elements`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-permit`;
load data local infile '/home/waleed/properties/tmp/pinellas/permit.csv'
replace into table `pinellas-permit`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;

TRUNCATE `pinellas-exemptions`;
load data local infile '/home/waleed/properties/tmp/pinellas/exemptions.csv'
replace into table `pinellas-exemptions`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;
