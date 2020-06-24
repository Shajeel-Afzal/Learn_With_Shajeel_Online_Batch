<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<?php require_once "db/process.php";?>

	<?php
		$name = "";
		$cnic = "";
		$id = "";

		if(isset($_GET['edit'])){
			echo "<br>Edit Button Clicked!<br>";
			$id = $_GET['edit'];
			$name = $_GET['name'];
			$cnic = $_GET['cnic'];

			echo "id=".$id.", name=".$name.", cnic=".$cnic."<br>";

			// header("location: ../include_demo.php");
		}

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
			echo $row['id']." ".$row['name']." <a href="."db/sql.php?delete=".$row['id'].">
				<button>Delete</button>
			</a>"."<a href="."include_demo.php?edit=".$row['id']."&name=".$row['name']."&cnic=".$row['cnic']."><button>Edit</button></a>";
		}

		$result->close();
	?>

	<hr>

	<h3><?php 
				if($name == ""){
					echo "Add New Record";
				} else {
					echo "Updte Existing Record";
				}
			?></h3>

	<form method="POST" action="db/sql.php">
		
		<input type="hidden" name="id" value="<?php echo $id;?>">

		<input type="text" name="name" value="<?php echo $name;?>">
		<br>

		<input type="text" name="cnic" value="<?php echo $cnic;?>">
		<br>

		<input type="submit" name="<?php 
				if($name == ""){
					echo "add";
				} else {
					echo "update";
				}
			?>" value="
			<?php 
				if($name == ""){
					echo "Add New Record";
				} else {
					echo "Updte Record";
				}
			?>
		">
		<br>

	</form>

</body>
</html>