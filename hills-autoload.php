<?php

$ftp_server = "ftp.hcpafl.org";
$ftp_user = "public";
$ftp_pass = "access";
$local_dir = "/home/waleed/properties/tmp/";
$db_uname = 'waleed';
$db_passwd = 'ahmed31';
$db = 'properties';
$dbcon = mysql_pconnect('localhost',$db_uname, $db_passwd);
mysql_select_db($db,$dbcon);

// CONNECT AND LOGIN TO FTP
$con = ftp_connect($ftp_server) or die("Couldn't connect to $ftp_server");
if (@ftp_login($con, $ftp_user, $ftp_pass)) {
    //echo "Connected as $ftp_user@$ftp_server\n";
} else {
    //echo "Couldn't connect as $ftp_user\n";
}
ftp_pasv($con, true);

// CHANGE TO FTP DIR FOR DOWNLOAD
ftp_chdir($con, "shapefiles");
//echo ftp_pwd($con);

// GET FTP DIR LIST
$contents = ftp_nlist($con,"/shapefiles");
//print_r($contents);

// SEARCH FOR ALL SALES FILE NAME
$match = preg_grep('/(allsales.*)/',$contents);
//print_r($match);
$key = array_keys($match);
//echo $match[$key[0]];
$allsalesfile = $match[$key[0]];

// DOWNLOAD ALL SALES FILE
ftp_get($con, $local_dir."allsales.zip", $allsalesfile, FTP_BINARY);

// SEARCH FOR PARCEL FILE NAME
$match = preg_grep('/(parcel.*)/',$contents);
//print_r($match);
$key = array_keys($match);
//echo $match[$key[0]];
$parcelfile = $match[$key[0]];

// DOWNLOAD PARCEL FILE
ftp_get($con, $local_dir."parcel.zip", $parcelfile, FTP_BINARY);

// CLOSE FTP CONNECTION
ftp_close($con);

// EXTRACT ALL SALES AND PARCEL FILES
$zipArchive = new ZipArchive();
$result = $zipArchive->open($local_dir."allsales.zip");
if ($result === TRUE) {
    $zipArchive ->extractTo($local_dir."allsales");
    $zipArchive ->close();
   // echo "SUCCESS";
} else {
   // echo "ERROR";
}
$result = $zipArchive->open($local_dir."parcel.zip");
if ($result === TRUE) {
    $zipArchive ->extractTo($local_dir."parcel");
    $zipArchive ->close();
    // Do something else on success
} else {
    // Do something on error
}

// TRUNCATE ALLSALES AND PARCEL TABLES
$query = "TRUNCATE allsales";
mysql_query($query,$dbcon);
$query = "TRUNCATE parcel";
mysql_query($query,$dbcon);

// IMPORT NEW PARCEL AND SALES DBF FILE INTO DATABASE
import_dbf($db, "parcel", $local_dir."parcel/parcel.dbf");
import_dbf($db, "allsales", $local_dir."allsales/allsales.dbf");

// CLEAN UP PARCEL TABLE
/*
$query = 'UPDATE parcel SET SITE_ADDR = REPLACE(SITE_ADDR, " BV", " BLVD");
UPDATE parcel SET SITE_ADDR = REPLACE(SITE_ADDR, " AV", " AVE");
UPDATE parcel SET SITE_ADDR = REPLACE(SITE_ADDR, " CR", " CIR");
UPDATE parcel SET SITE_ADDR = REPLACE(SITE_ADDR, " WY", " WAY");
UPDATE parcel SET SITE_ADDR = REPLACE(SITE_ADDR, " TL", " TRL");
UPDATE parcel SET SITE_ADDR = REPLACE(SITE_ADDR, " HW", " HWY");
UPDATE parcel SET SITE_ADDR = REPLACE(SITE_ADDR, " PW", " PKWY");';
mysql_query($query,$dbcon);
*/

function import_dbf($db, $table, $dbf_file)
{
global $dbcon;
if (!$dbf = dbase_open ($dbf_file, 0)){ die("Could not open $dbf_file for import."); }
$num_rec = dbase_numrecords($dbf);
$num_fields = dbase_numfields($dbf);
$fields = array();

for ($i=1; $i<=$num_rec; $i++){
$row = @dbase_get_record_with_names($dbf,$i);
$q = "insert into $db.$table values (";
foreach ($row as $key => $val){
if ($key == 'deleted'){ continue; }
$q .= "'" . addslashes(trim($val)) . "',"; // Code modified to trim out whitespaces
}
if (isset($extra_col_val)){ $q .= "'$extra_col_val',"; }
$q = substr($q, 0, -1);
$q .= ')';
//if the query failed - go ahead and print a bunch of debug info
if (!$result = mysql_query($q, $dbcon)){
print (mysql_error() . " SQL: $q
\n");
print (substr_count($q, ',') + 1) . " Fields total.

";
$problem_q = explode(',', $q);
$q1 = "desc $db.$table";
$result1 = mysql_query($q1, $dbcon);
$columns = array();
$i = 1;
while ($row1 = mysql_fetch_assoc($result1)){
$columns[$i] = $row1['Field'];
$i++;
}
$i = 1;
foreach ($problem_q as $pq){
print "$i column: {$columns[$i]} data: $pq
\n";
$i++;
}
die();
}
}
}


?>
