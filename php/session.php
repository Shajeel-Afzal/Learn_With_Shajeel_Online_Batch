<?php 

	// $_SESSION superglobal variable demo

	// start a new session
	session_start();

	$_SESSION['color'] = "green";

	// session_unset();
	// session_destroy();

?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<?php

		echo $_SESSION['color'];

	?>

</body>
</html>