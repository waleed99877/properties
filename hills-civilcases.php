<?php 

 $con = mysqli_connect('localhost','waleed','ahmed31','properties');

if(!$con){
  echo "your db is not connected.";
}




 	

if(isset($argv[1])){
	//Upload File
    //Import uploaded file to Database
	$file = $argv[1];
	echo $file."\n";
	$handle = fopen($file, "r");
	$i=0;
	while(($data = fgetcsv($handle,100000, ",")) !== FALSE) {
		 $i++;
		 if($i==1){		
			continue;
		 }

		// print_r($data) ;

		 //split thePartyAddress 
		 $info = trim($data[9]);
		 
		   $address1 = '';
		   $address2 = '';
		   $address3 = '';
		   $address4 = '';	 
		   $city     = '';
		   $state    = '';
		   $zipcode  = '';
		 
  
		 if($info!=''){
              $array = array();
              $array = explode(',',$info);

              if(sizeof($array)==6){
        
                 $address1 = trim($array[0]);
		         $address2 = trim($array[1]);	 
		         $address3 = trim($array[2]);	 
		         $address4 = trim($array[3]);	 
		         $city     = trim($array[4]);

		         $temp = trim($array[5]);
		         //echo "<br/>";
		         //echo "temp: ".$temp."<br/>";

		         $array2= explode(' ',$temp);
		         $state    = $array2[0];
		         $zipcode  = $array2[1];
		       //  echo "state: ".$state." , zicode: ".$zipcode.'<br/>';
              }

              if(sizeof($array)==5){
        
                 $address1 = trim($array[0]);
		         $address2 = trim($array[1]);	 
		         $address3 = trim($array[2]);
		         $address4 = '';		 
		         $city     = trim($array[3]);

		         $temp = trim($array[4]);
		         //echo "<br/>";
		         //echo "temp: ".$temp."<br/>";

		         $array2= explode(' ',$temp);
		         $state    = $array2[0];
		         $zipcode  = $array2[1];
		       //  echo "state: ".$state." , zicode: ".$zipcode.'<br/>';
              }

              if(sizeof($array)==4){
        
                 $address1 = trim($array[0]);
		         $address2 = trim($array[1]);	
		         $address3 = '';		 
		         $address4 = '';	 
		         $city     = trim($array[2]);

		         $temp = trim($array[3]);
		         //echo "<br/>";
		         //echo "temp: ".$temp."<br/>";

		         $array2= explode(' ',$temp);
		         $state    = $array2[0];
		         $zipcode  = $array2[1];
		       //  echo "state: ".$state." , zicode: ".$zipcode.'<br/>';
              }
             
              if(sizeof($array)==3){
        
                 $address1 = trim($array[0]);
		         $address2 = '';
		         $address3 = '';		 
		         $address4 = '';		 
		         $city     = trim($array[1]);

		         $temp = trim($array[2]);
		        // echo "<br/>";
		        // echo "temp: ".$temp."<br/>";

		         $array2= explode(' ',$temp);
		         $state    = $array2[0];
		         $zipcode  = $array2[1];
		         // echo "state: ".$state." , zicode: ".$zipcode.'<br/>';
              }

		 }
		 
			  $insert = "insert  `hills-civilcases` set 
				CaseCategory = '".$data[0]."',
				CaseTypeDescription = '".$data[1]."',	
				CaseNumber = '".$data[2]."',	
				Title = '".$data[3]."',	
				FilingDate = '".$data[4]."',	
				PartyType = '".$data[5]."',	
				FirstName = '".$data[6]."',	
				MiddleName = '".$data[7]."',		
				LastNameCompanyName = '".$data[8]."',	
				#DateofDeath = '".$data[9]."',	
				PartyAddress = '".$data[9]."',	
				Attorney = '".$data[10]."',	
				address1 = '".$address1."',	
				address2 = '".$address2."',	
				address3 = '".$address3."',	
				address4 = '".$address4."',	
				city = '".$city."',	
				state = '".$state."',	
				zipcode = '".$zipcode."'
				";		
							
	$Adding = mysqli_query($con,$insert);
	
	}//while	

	/*
	 $message = "<div class='alert alert-success'>
	  Your information has been successfully stored.</div>";
	 */
	 
  }//if	 
							

?>
