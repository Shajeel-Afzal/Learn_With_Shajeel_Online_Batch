<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	// $_GET and $_POST superglobal variables

	<form action="form_submit.php" method="post">
		<p>Name: </p>
		<input type="text" name="userName">

		<br/>

		<p>Domain: </p>
		<input type="text" name="domain">

		<p><input type="submit" name="submit" value="Submit"></p>

	</form>

	<hr>

	<form action="form_submit_with_get.php" method="get">
		<p>Name: </p>
		<input type="text" name="userName">

		<br/>

		<p>Domain: </p>
		<input type="text" name="domain">

		<p><input type="submit" name="submit" value="Submit"></p>

	</form>


</body>
</html>