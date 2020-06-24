<?php

	require_once "connection.php";

	if(isset($_POST['update'])){
		echo "Update Existing Record!<br>";

		$name=$_POST['name'];
		$cnic=$_POST['cnic'];
		$id=$_POST['id'];

		$query = "UPDATE customers SET `name`='$name',`cnic`='$cnic' WHERE `id`='$id';";

		echo "<br>".$query;

		$mySqli->query($query) or die($mySqli->error);

		header("location: ../include_demo.php");
	}

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

	if(isset($_GET['delete'])){
		echo "Delete Button Clicked!<br><br>";

		$id = $_GET['delete'];

		$query = "DELETE FROM customers WHERE id=".$id.";";

		echo "<br>".$query."<br>";

		$result = $mySqli->query($query);

		if($result != 1){
			die($mySqli->error);
		} else {
			echo "Record with id ".$id." deleted successfully!";
			header("location: ../include_demo.php");
		}

	}
	// DELETE FROM TABLE_NAME WHERE ID=1;


?>