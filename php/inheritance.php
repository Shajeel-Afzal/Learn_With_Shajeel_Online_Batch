<?php

	// Points to Remember:
	// - A class can extend only 1 class
	// - A class can implement any number of interfaces

	// interface
	// interface contains abstract methods.
	interface AnimalInterface extends Abc{
		public function makeSound();
		public function eat();
		public function run();
		public function sleep();
	}

	// An interface can also extend another interface
	interface Abc {
		public function xyz();
	}

	// Parent Class
	class Animal {
		// Property, member variable, field
		public $name;
		public $color;
		public $legs;

		public function hi(){
			echo "Hi, from the Animal Class!";
		}
	}

	class Cat extends Animal{
		
	}

	// Sub Class
	class Dog extends Animal implements AnimalInterface {
		// All the public and protected fields and functions will be part of the sub class.

		public function makeSound(){
			echo "Make Sound Function Called!";
		}

		public function eat(){
			echo "Eat function called!";
		}

		public function run(){
			echo "Run Function Called!";
		}
		
		public function sleep(){
			echo "Sleep Function Called!";
		}

		public function xyz(){

		}
	}

	$myDog = new Dog();
	$myDog->hi();
	$myDog->name = "ABC";

	echo "<br>".$myDog->name."<br>";

	// Abstract Classes
	// They cannot be instantiated
	// They can only be inherited
	// Abstract classes offer the advantage of being able to contain methoeds with definitions and abstract methods that aren't define until they are inherited.
	// A class inheriting from an abstract clas must implement all the abstract methods.
	// abstract keyword is used to create abstract classes

	abstract class Fruit{
		private $color;

		abstract public function eat();

		public function setColor($color){
			$this->color = $color;
		}

		public function getColor(){
			return $this->color;
		}
	}

	class Apple extends Fruit{
		public function eat(){
			echo "<br>Eating Apple!<br>	";
		}
	}

	$appleObj = new Apple();
	$appleObj->eat();


?>







