<?php

$db_uname = 'waleed';
$db_passwd = 'ahmed31';
$db = 'properties';
$dbcon = mysql_pconnect('localhost',$db_uname, $db_passwd);
mysql_select_db($db,$dbcon);

if(!isset($_GET['list']))
{
echo '<a href="http://fairpriceproperties.com/export.php?list=hillsqc">Hillsborough - Quit Claim SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hillsinher">Hillsborough - Inheritance SFR</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hillstax">Hillsborough - Tax Delinquent SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hills1995">Hillsborough - Bought Prior to 1995 SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hillssenior">Hillsborough - Senior Exemption</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hillsevict">Hillsborough - Evictions</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hillsprobate">Hillsborough - Probate</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hills1995mf">Hillsborough - MF Bought Prior to 1995</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=hillsqcmf">Hillsborough - MF Quit Claim</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=orangetax">Orange - Tax Delinquent SFR - Cert 2015</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=orangeqc">Orange - Quit Claim SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=orange1990">Orange - Bought Prior to 1990 SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=pinellasqc">Pinellas - Quit Claim SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=pinellas1995">Pinellas - Bought Prior to 1995 SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=polkqc">Polk - Quit Claim SFR Absentee</a><br>';
echo '<a href="http://fairpriceproperties.com/export.php?list=polk1990">Polk - Bought Prior to 1990 SFR Absentee</a><br>';
exit();
}

switch ($_GET['list'])
{
	case "hillsqc":
		$query = 'SELECT * FROM `list-hills-qc-abs-sfr`';
		$filename = "hills-qc-abs-sfr.csv";
		break;
	case "hillsinher":
		$query = 'SELECT * FROM `list-hills-inheritance-sfr`';
                $filename = "hills-inheritance-sfr.csv";
                break;
	case "hillstax":
		$query = 'SELECT * FROM  `hills-taxdel-abs-sfr`';
		$filename = "hills-taxdel-abs-sfr.csv";
		break;
	case "hills1995":
		$query = 'SELECT * FROM  `hills-pre1995-abs-sfr`';
		$filename = "hills-pre1995-abs-sfr.csv";
		break;
        case "hillssenior":
                $query = 'SELECT * FROM  `list-hills-senior-exempt`';
                $filename = "hills-senior-exempt.csv";
                break;
	case "hillsevict":
                $query = 'SELECT * FROM  `list-hills-evictions`';
                $filename = "hills-evictions.csv";
                break;
	case "hillsprobate":
                $query = 'SELECT * FROM  `list-hills-probate`';
                $filename = "hills-probate.csv";
                break;
	 case "hills1995mf":
                $query = 'SELECT * FROM  `list-hills-pre1995-mf`';
                $filename = "hills-pre1995-mf.csv";
                break;
	case "hillsqcmf":
                $query = 'SELECT * FROM `list-hills-qc-mf`';
                $filename = "hills-qc-mf.csv";
                break;	
	case "orangeqc":
		$query = 'SELECT * FROM  `list-orange-qc-abs-sfr`';
		$filename = "orange-qc-abs-sfr.csv";
		break;
	case "orangetax":
                $query = 'SELECT * FROM  `list-orange-taxdel-sfr`';
                $filename = "orange-tax-sfr.csv";
                break;
	case "orange1990":
                $query = 'SELECT * FROM  `list-orange-pre1990-abs-sfr`';
                $filename = "orange-pre1990-abs-sfr.csv";
                break;
	case "pinellasqc":
		$query = 'SELECT * FROM `list-pinellas-qc-abs-sfr`';
		$filename = "pinellas-qc-abs-sfr.csv";
		break;
	case "pinellas1995":
                $query = 'SELECT * FROM `list-pinellas-pre1995-abs-sfr`';
                $filename = "pinellas-pre1995-abs-sfr.csv";
                break;
	case "polkqc":
                $query = 'SELECT * FROM `list-polk-qc-abs-sfr`';
                $filename = "polk-qc-abs-sfr.csv";
                break;
        case "polk1990":
                $query = 'SELECT * FROM `list-polk-pre1990-abs-sfr`';
                $filename = "polk-pre1990-abs-sfr.csv";
                break;


	default:
		$query = 'SELECT * FROM `list-hills-qc-abs-sfr`';
                $filename = "hills-qc-abs-sfr.csv";
}


$result = mysql_query($query, $dbcon);
if (!$result) die('Couldn\'t fetch records'); 
$num_fields = mysql_num_fields($result); 
$headers = array(); 
for ($i = 0; $i < $num_fields; $i++) 
{     
       $headers[] = mysql_field_name($result , $i); 
} 
$fp = fopen('php://output', 'w'); 
if ($fp && $result) 
{     
       header('Content-Type: text/csv');
       header('Content-Disposition: attachment; filename="'.$filename.'"');
       header('Pragma: no-cache');    
       header('Expires: 0');
       fputcsv($fp, $headers); 
       while ($row = mysql_fetch_row($result)) 
       {
          fputcsv($fp, array_values($row)); 
       }
die; 
} 

?>
