<?php

	echo "This is process.php";

	require_once "connection.php";

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
		echo $row['id']." ".$row['name']." <button name='delete'>Delete</button>";
	}

	$result->close();


?>