<?php

	echo "This is process.php";

	$hostName = "localhost";
	$databaseName = "shop_database";
	$password = "";
	$userName = "root";
	$CUSTOMERS_TABLE = "customers";

	$mySqli = new mysqli($hostName, $userName, $password, $databaseName);

	if($mySqli->connect_error){
		die($mySqli->connect_error);
	}

	echo "<br>Database Connection Succcesful!<br><br>";

	$query = "SELECT * from ".$CUSTOMERS_TABLE;

	$result = $mySqli->query($query);

	print_r($result);

	if(!$result){
		die($mySqli->error);
	}

	echo "<br>";

	for($i = 0; $i < $result->num_rows; $i++){
		$result->data_seek($i);

		$row = $result->fetch_assoc();



		echo "<br>";
		echo $row['id']." ".$row['name'];
	}

?>