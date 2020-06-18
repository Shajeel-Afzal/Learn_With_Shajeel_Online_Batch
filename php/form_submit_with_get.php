<?php session_start();?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<h1>Welcome to GET example!</h1>

	<?php

		echo $_SESSION['color']; 

		unset($_SESSION['color']); // delete the information from the session.

		echo $_GET["userName"];
		echo "<br/>";

		echo $_GET["domain"];
		echo "<br/>";	

	?>

</body>
</html>