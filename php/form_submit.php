<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<h1>
		Welcome to form_submit.php
	</h1>

	<br/>
	<br/>

	<?php

		$name = $_POST["userName"];
		echo $name;
		echo "<br/>";

		$domain = $_POST["domain"];
		echo $domain;
		echo "<br/>";

		if(strlen($name) > 30){
			echo "User entered a large name!";
		}
		


	?>

</body>
</html>