TRUNCATE `hills-tax_roll`;
load data local infile '/home/waleed/properties/tmp/hills-tax_roll.csv'
replace into table `hills-tax_roll`
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 lines;
