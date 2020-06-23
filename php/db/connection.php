<?php

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

?>