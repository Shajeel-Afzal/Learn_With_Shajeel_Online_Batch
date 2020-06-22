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

		// -------------------- Associative Arrays --------------------

		echo "<br><br> --- Associative Arrays ---";
		echo "<br><br>";

		$students = array(
			"Asifa"=>"10", 
			"Nazia"=>"2" 
		);

		$students["Shajeel"] = "3";

		echo $students["Asifa"];

		echo "<br><br> --- Control Structures ---";
		echo "<br><br>";

		// if/else

		/*

			if(condition){
				// statements if the condition is true.
			} else {
				// statements if the condition is false.	
			}

		*/

		// elseif

		/*

			if(condition){
				// statements if the condition is true.
			} elseif(condition2){
				// code
			} 
			else {
				// statements if the condition is false.	
			}

		*/

		// while loop

		/*

			while(condition){
				// statements to be executed until the condition is true
			}

		*/

		// do while loop
		/*
			do{
				// statments untile the condition is true
			} while(condition);
		*/

		// for loop

		/*

			for(init; condition; increment){
				// code to be executed.
			}

		*/

		// For Each Loop

		echo "<br><br> --- foreach loop ---";
		echo "<br><br>";

		/*
	
			// Method #1:

			foreach($array as $value){
				// code to be executed.
			}
		
		*/

		foreach ($students as $value) {
			echo $value."<br/>";
		}

		// Method # 2

		/*

			foreach($arrayName as $key => $value){
				// code to be executed!
			}

		*/

		foreach ($students as $name => $value) {
			echo $name." ".$value."<br/>";
		}

		echo "<br><br> --- Switch ---";
		echo "<br><br>";

		// switch statement is alternative of if elseif else statments 

		/*

			switch(expression){
				case value1:
					// code to be executed
				break;
				case value 2:
					// code to be executed
				break;

				default:
					// code to be executed
			}

		*/

		// break/continue statement

		echo "<br><br> --- functions ---";
		echo "<br><br>";

		function functionName(){
			// code to be executed
		}

		// function names are NOT case-sensitive

		function sayHello(){
			echo "Hello from the Function<br/>";
		}

		sayHello();

		// function with parameters

		function multiplyByTwo($number){
			$answer = $number * 2;
			echo $answer."<br/>";
		}

		multiplyByTwo(10);

		// default arguments

		function setAge($age = 10){
			echo "Age: ".$age."<br/>";
		}

		setAge(20);
		setAge();

		// return statement
		function multiply($num1, $num2){
			return $num1 * $num2;
		}

		echo multiply(15, 2);
		echo "<br/>";

		echo "<br><br> --- Pre Defined Variables ---";
		echo "<br><br>";
		
		// superglobal variable.
		// These can be accessed from any file, class, or function
		// $_SERVER, $GLOBALS, $_REQUEST, $_POST, $_GET, $_FILES, $_ENV, $_COOKIE, $_SESSION

		echo "<br><br> --- SERVER ---";
		echo "<br><br>";

		// it is an associative array that includes information such as headers, paths, script locations.

		foreach ($_SERVER as $key => $value) {
			echo "Key: ".$key.", Value: ".$value."<br/><br/>";
		}

	?>

</body>
</html>




