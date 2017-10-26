<?php


if($_POST['exclude'])
{
        $db = 'properties';
        $db_user = 'waleed';
        $db_pass = 'ahmed31';

        $con = mysqli_connect('localhost',$db_user,$db_pass,$db);
        //mysql_select_db($db,$con);
		
		$exclude = trim(mysqli_real_escape_string($con, $_POST['exclude']));
		$_SESSION['county'] = $_POST['county'];
		$dnc = $_POST['dnc'];
		
		switch ($_POST['county'])
		{
			case "hills":				
				$exclude = str_replace('-', '', $exclude);
				$exclude = str_replace('.', '', $exclude);
				$sql = "insert into exclude (Pin, DNC) values ('$exclude', '$dnc')";
				break;
			
			case "hillsprobate":
				$sql = "insert into exclude (Pin, DNC) values ('$exclude', '$dnc')";
                                break;
				
			case "pinellas":
				$sql = "insert into `pinellas-exclude` (Parcel, DNC) values ('$exclude', '$dnc')";
				//echo $sql;
				break;
	
			case "polk":
				$exclude = str_replace('-', '', $exclude);
                                $sql = "insert into `polk-exclude` (Parcel, DNC) values ('$exclude', '$dnc')";
                                //echo $sql;
                                break;			
	
			case "orange":
				$ex = explode("-",$exclude);
				$exclude = $ex[2].$ex[1].$ex[0].$ex[3].$ex[4].$ex[5];
				$sql = "insert into `orange-exclude` (Parcel, DNC) values ('$exclude', '$dnc')";
				//echo $sql;
				break;
		}
        

        

        mysqli_query($con, $sql);

        echo "** Excluded: ".$exclude."<br><br>";

        mysqli_close($con);
}
?>

<form action="exclude.php" method="post">
County: <br>
<input type="radio" name="county" value="hills" <?php echo ($_SESSION['county']=='hills' ? "checked" : "checked"); ?>>Hillsborough<br>
<input type="radio" name="county" value="hillsprobate" <?php echo ($_SESSION['county']=='hillsprobate' ? "checked" : ''); ?>>Hillsborough Probate/Evictions<br>
<input type="radio" name="county" value="pinellas" <?php echo ($_SESSION['county']=='pinellas' ? "checked" : ''); ?>>Pinellas<br>
<input type="radio" name="county" value="polk" <?php echo ($_SESSION['county']=='polk' ? "checked" : ''); ?>>Polk<br>
<input type="radio" name="county" value="orange" <?php echo ($_SESSION['county']=='orange' ? "checked" : ''); ?>>Orange<br><br>
Folio/Parcel: <br>
<input type="text" name="exclude"><br>
<input type="hidden" name="dnc" value="0">
<input type="checkbox" name="dnc" value="1"> Do Not Call <br><br>
<input type="submit" value="Submit">
</form>

