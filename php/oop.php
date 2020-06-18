<?php

	// Class names can't start with a dollar sign, number, or a special symbol.

	// Class names can only start with an underscore or letter.
	class Car {
		// Property, Member-Variables
		public $wheelSize;	
		public $color;
		public $brand;
		public $model = 2020;

		// Constructor
		public function __construct($wheelSize, $color, $brand, $model){
			echo "<br>A new Object is created!<br>";

			$this->wheelSize = $wheelSize;
			$this->color = $color;
			$this->brand = $brand;
			$this->model = $model;
		}

		// public function __construct($wheelSize, $color, $brand){
		// 	echo "<br>A new Object is created!<br>";

		// 	$this->wheelSize = $wheelSize;
		// 	$this->color = $color;
		// 	$this->brand = $brand;
		// }

		// Destructor: Call evertime when an object is destroyed

		function __destruct(){
			echo "<br>Destructor is called!<br>";
		}

		function getModel(){
			return $this->model;
		}

		function getBrand(){
			return $this->brand;
		}

		// methods, function
		function drive(){
			echo "I'm Driving!";
		}

		function brake(){
			echo "<br>I'm Stopping!<br>";
		}
	}

	$hondaCity = new Car("17 Inch", "grey", "Hondaaaa", "2020");
	
	echo $hondaCity->wheelSize;
	echo "<br>";
	echo $hondaCity->getBrand();
	echo "<br>";
	echo $hondaCity->brake();

	unset($hondaCity);

	// $v8 = new Car();
	// $v8->color = "white";

	// echo $v8->color;


?>