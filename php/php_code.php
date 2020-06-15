<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<!-- Do this step on your computer -->

	<?php

		// This is single line comment!

		/*

			This is multiline comment

		*/

		echo "Hello World from PHP!";

		echo "</br>";

		echo "Another Statement!";

		echo "<h1>This is heading from the PHP echo</h1 >";

		// -------------------- variables ------------------

		// Every PHP variable starts with a dollar sign $
		$variable_name = 123;

		// Variable Naming Rules

		/*

			1- A variable name must start a letter or an underscore.

			2- A variable name cannot start with a number

			3- A variable name can only contain alpha-numeric (a-z, A-Z, 0-9) characters and underscores.

			4- Variable Names are case sensitive
			for example, $age and $AGE are different variables.;

		*/

		// -------------------- constants --------------------

		echo "<br><br> --- CONSTANTS ---";
		echo "<br><br>";

		// define(name, value, case-insensitive)

		define("Cases", "1 lac 30 thousand!");

		echo Cases;

		// -------------------- Data Types --------------------

		echo "<br><br> --- Data Types ---";
		echo "<br><br>";

		// String, Integer, Float, Boolean, Array, Object, Null, Resource

		$string1 = "Shajeel";
		$string2 = "Afzal";

		// String concatenation
		echo $string1." ".$string2;

		// PHP Integer
		/*
			- It's Value Cannot contain commas, or blank
			- It must not have any decimal point.
			- It can be either positive or negative.

		*/

		$recovered = 50000; // integer
		$decimalVariable = 5.5; // decimal
		$x = true; // boolean
		$y = false; // boolean 

		// -------------------- Variables Scope --------------------

		echo "<br><br> --- Variables Scope ---";
		echo "<br><br>";

		// local, global scope

		$name = "Shajeel";
		function getName(){
			// echo $name; << This will result in an error
			global $name;
			echo $name;
		}

		getName();

		// -------------------- Variable Variables --------------------

		echo "<br><br> --- Variable Variables ---";
		echo "<br><br>";

		// In PHP, you can use one variable to specify another variable's name.

		$a = "hello";
		$hello = "Hi!";
		echo $$a;

		// -------------------- Arithmetic Operations --------------------

		echo "<br><br> --- Arithmetic Operations ---";
		echo "<br><br>";

		// +, -, *, /, %
		// ++, --

		// -------------------- Assignment Operator --------------------

		echo "<br><br> --- Assignment Operator ---";
		echo "<br><br>";

		// =

		// +=, -=, *=, /=, %=

		$x = 10;
		$y = 20;

		$x += $y; // $x = $x + $y; 

		// -------------------- Comparison Operators --------------------

		echo "<br><br> --- Comparison Operators ---";
		echo "<br><br>";

		// ==, ===, !=, <>, !==
		// >, <, >=, <=

		// -------------------- Logical Operators --------------------

		echo "<br><br> --- Logical Operators ---";
		echo "<br><br>";

		// and, &&, or, ||, !, xor

		// -------------------- Arrays --------------------

		echo "<br><br> --- Arrays ---";
		echo "<br><br>";

		$names = array("Wasim Ahmed", "Mubashar Joyia", "Usama Saeed Malik");

		echo $names[2];
		
		// You can have integers, strings, and other data types together in one Array.


	?>

</body>
</html>