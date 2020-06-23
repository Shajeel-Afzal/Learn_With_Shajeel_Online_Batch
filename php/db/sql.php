<?php

	require_once "connection.php";

	if(isset($_POST['add'])){
		echo "Add Button Clicked!";

		$name = $_POST['name'];
		$cnic = $_POST['cnic'];

		echo "name: ".$name." cnic: ".$cnic."<br><br>";

		$query = "INSERT INTO `customers` (`name`, `cnic`) VALUES ('$name',$cnic);";

		echo $query."<br>";

		$result = $mySqli->query($query);

		print_r($result);

		if(!$result){
			die($mySqli->error);
		} else {
			header("location: ../include_demo.php");
		}

	}

	if(isset($_POST['delete'])){
		echo "Delete Button Clicked!";
	}

	// DELETE FROM TABLE_NAME WHERE ID=1;


?>