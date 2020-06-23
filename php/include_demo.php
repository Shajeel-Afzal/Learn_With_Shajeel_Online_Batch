<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<?php require_once "db/process.php";?>

	<hr>

	<h3>Add New Record</h3>

	<form method="POST" action="db/sql.php">
		
		<input type="text" name="name">
		<br>

		<input type="text" name="cnic">
		<br>

		<input type="submit" name="add" value="Add Record">
		<br>

	</form>

</body>
</html>