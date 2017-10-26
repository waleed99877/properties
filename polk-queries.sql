TRUNCATE `polk-building`;
load data local infile '/home/waleed/properties/tmp/polk/ftp_bldg.txt'
replace into table `polk-building`
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n' ignore 1 lines;

TRUNCATE `polk-land`;
load data local infile '/home/waleed/properties/tmp/polk/ftp_land.txt'
replace into table `polk-land`
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n' ignore 1 lines;

TRUNCATE `polk-owner`;
load data local infile '/home/waleed/properties/tmp/polk/ftp_owner.txt'
replace into table `polk-owner`
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n' ignore 1 lines;

TRUNCATE `polk-parcel`;
load data local infile '/home/waleed/properties/tmp/polk/ftp_parcel.txt'
replace into table `polk-parcel`
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n' ignore 1 lines;

TRUNCATE `polk-sales`;
load data local infile '/home/waleed/properties/tmp/polk/ftp_sales.txt'
replace into table `polk-sales`
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n' ignore 1 lines
(PARCEL_ID, SALE_ID, LN_NUM, @SALEDT, PRICE, BOOK, PAGE, SALETYPE, TRNS_CD, TRNS_DSCR, INSTRTYP, INSTRTYP_DSCR, GRANTOR, GRANTEE, FORECLOSURE)
set SALEDT = STR_TO_DATE(@SALEDT, '%m/%d/%Y');

TRUNCATE `polk-site`;
load data local infile '/home/waleed/properties/tmp/polk/ftp_site.txt'
replace into table `polk-site`
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n' ignore 1 lines;
