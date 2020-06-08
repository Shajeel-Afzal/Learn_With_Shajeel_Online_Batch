

// alert("Alert from External JS.");

// This is comment!


/*

This is multiple lines 
comment!

*/

// C++ variables

// datatype (int, double, float, etc) variableName;

// JS variables
var graphicsCard;
graphicsCard = "\"RTX 2080ti\"";
document.write(graphicsCard);

var RAM = 32;
document.write("<br>");
document.writeln(RAM);

var RAMString = "32";

document.write("<br>");
document.write("<br>");

var testVariable;
document.write(testVariable);

document.write("<br>");
document.write("<br>");


// String concatination
var firstName = "Shajeel";
var lastName = "Afzal";

document.write("<br>");
document.write("<br>");


document.write(firstName + " " + lastName);

document.write("<br>");
document.write("<br>");

var ram1 = 16;
var ram2 = 16;

document.write(ram1 + ram2);




// JS is a case sensitive language.


// Variable Naming Rules

// The first character must be a letter, an underscore,
// or a dollar sign $

var firstName;
var _lastName;
var $age;

// The subsequent characters can letters, underscore, 
// or a dollar sign

var _degree;

// Numbers are not allowed as first character.

// var 4domain; <-- (invalid variable name) 

// Variable names cannot include a mathametical or 
// logical operator.

// var x2*4; // <-- invalid variable name.

// variable names cannot contain spaces

// var x y; // <-- invalid variable name.

// you cannot use special symbols and reserved keywords 
// of JavaScript.

// ------------- Data Types -----------------

var price = 55.5; // floating number
var name = "Shajeel Afzal"; // String
var myDegree = 'Software Engineer'; // String
var model = 2020; // int
var isActive = true; // boolean

// ------------- Aithmetic Operators -------------

// + (Addition)
// - (subsctraction)
// / (division)
// * (multiplication)
// % (modulus operator)
// ++ (increment operator)
// -- (decrement operator)

var x = 10 + 5;
document.write(x);

x++; // x = x + 1;
document.write("<br>" + x);

x--; // x = x - 1;
document.write("<br>" + x);

document.write("<br>" + x++); // <-- Post increment operator

document.write("<br>" + x);

document.write("<br>" + --x); // <-- Preincrement operator

// ------------- Assignment Operator ----------------

// = 
var x = 10;
var y = 20;

x = x + y;

// +=

x += y; // <-- x = x+y;

// -=, *=, /=

x = 10;
y = 20;
x -= y += 9; // (result -19)
document.write("<br><br>" + x);

// ------------- Comparison Operator ----------------

// == (Equal to)

console.log("Hello Console!");

console.log(20 == 21);
console.log(20 == 20);
console.log("20" == 20);
console.log("Hello20" == 20);

// === (Equal to but it also compares the type)

console.log("100" === 100);

// != (Not equal to)

// !== (Not equal to but it also compare the data type)

// >

// <

// >=

// <=

// ------------- Logical Operator ----------------

// && (AND Operator)

// || (OR Operator)

console.log((40 > 10) && (5 < 10));

console.log((10 < 5) && (1 < 2));

console.log((10 < 5) || (1 < 2));


// ------------- String Operator ----------------

var firstName = "Shajeel";
var lastName = "Afzal";

var fullName = firstName + " " + lastName;

console.log(fullName);

// ------------- JS Conditions ----------------

// if(condition){

// 	// code

// }

var age = 44;

if(age > 22){
	console.log("You're qualified!");
} else if(age < 15){
	console.log("You're too Young for this course.");
} else {
	console.log("You're not qualified!");
}

// ------------- Ternary Operator ----------------
// condition ? true : false

console.log(age > 40 ? "You're qualified" : "You're not qualified!");


// Variable Naming Rules

// The first character must be a letter, an underscore,
// or a dollar sign $

var firstName;
var _lastName;
var $age;

// The subsequent characters can letters, underscore, 
// or a dollar sign

var _degree;

// Numbers are not allowed as first character.

// var 4domain; <-- (invalid variable name) 

// Variable names cannot include a mathametical or 
// logical operator.

// var x2*4; // <-- invalid variable name.

// variable names cannot contain spaces

// var x y; // <-- invalid variable name.

// you cannot use special symbols and reserved keywords 
// of JavaScript.

// ------------- Data Types -----------------

var price = 55.5; // floating number
var name = "Shajeel Afzal"; // String
var myDegree = 'Software Engineer'; // String
var model = 2020; // int
var isActive = true; // boolean

// ------------- Aithmetic Operators -------------

// + (Addition)
// - (subsctraction)
// / (division)
// * (multiplication)
// % (modulus operator)
// ++ (increment operator)
// -- (decrement operator)

var x = 10 + 5;
document.write(x);

x++; // x = x + 1;
document.write("<br>" + x);

x--; // x = x - 1;
document.write("<br>" + x);

document.write("<br>" + x++); // <-- Post increment operator

document.write("<br>" + x);

document.write("<br>" + --x); // <-- Preincrement operator

// ------------- Assignment Operator ----------------

// = 
var x = 10;
var y = 20;

x = x + y;

// +=

x += y; // <-- x = x+y;

// -=, *=, /=

x = 10;
y = 20;
x -= y += 9; // (result -19)
document.write("<br><br>" + x);

// ------------- Comparison Operator ----------------

// == (Equal to)

console.log("Hello Console!");

console.log(20 == 21);
console.log(20 == 20);
console.log("20" == 20);
console.log("Hello20" == 20);

// === (Equal to but it also compares the type)

console.log("100" === 100);

// != (Not equal to)

// !== (Not equal to but it also compare the data type)

// >

// <

// >=

// <=

// ------------- Logical Operator ----------------

// && (AND Operator)

// || (OR Operator)

console.log((40 > 10) && (5 < 10));

console.log((10 < 5) && (1 < 2));

console.log((10 < 5) || (1 < 2));


// ------------- String Operator ----------------

var firstName = "Shajeel";
var lastName = "Afzal";

var fullName = firstName + " " + lastName;

console.log(fullName);

// ------------- JS Conditions ----------------

// if(condition){

// 	// code

// }

var age = 44;

if(age > 22){
	console.log("You're qualified!");
} else if(age < 15){
	console.log("You're too Young for this course.");
} else {
	console.log("You're not qualified!");
}

// ------------- Ternary Operator ----------------
// condition ? true : false

console.log(age > 40 ? "You're qualified" : "You're not qualified!");

// ------------- Switch Statement ----------------

/*
	switch(expression){
		case 1:
			break;
		case 2:
			break;
		case 3:
			break;
		default:
			break;
	}
*/

var test = 1;

switch(test){
	case 1:
		console.log("Case 1.");
		// break;

	case 2:
		console.log("Case 2.");
		break;

	default:
		console.log("default case.");
		break;
}

// ------------- For Loop ----------------

// for(Statement1, Statement2, Statement3){
// 	// body (statements)
// }

// statement 1: executes before the loop 
// starts (Only 1 Time)

// statement 2: define the condition
// for running the app. (Executes after every execution)

// statement 3: executes after every loop

for(var i=0; i < 1000; i++){
	console.log("eRozgaar<br>");
}

// Valid Loop, Execution = 0 times
for(var a=0; false; a++){
	console.log("eRozgaar<br>");	
}


// Valid Loop.
var x = 1;
for(console.log("for loop statement 1<br>"); 
	x <= 2; 
	console.log("for loop statement 3<br>"))
{
	console.log("eRozgaar<br>");	
	x++;
}

// Valid Loop
var z=1;
for(;z<=10;){
	z++;
	console.log("eRozgaar<br>");
}

// ------------- While Loop ----------------

// while(condition){

// }

var xyz = 1;
while(xyz < 10){
	console.log("While");
	xyz++;	
}

// ------------- do-while Loop ----------------

// do{
// 	// statements
// }while(condition);

var zz = 1;
do{
	console.log(zz);
	zz++;
}while(zz < 10);

do{
	console.log("do-while");
}while(false);

// ------------- break/continue ----------------

var start = 0;
while(start < 20){
	console.log(start);

	if(start == 9){
		break;
	}

	start++;
}

start = 0;
while(start < 20){
	start++;

	if(start == 9){
		continue;
	}

	console.log(start);

}

// ------------- functions ----------------

/*
	1- Code Reuse
	2- Code Organization
	3- Code Block
	4- Function
	5- Method
	6- Procedure
	7- Optional Input(s)
	8- Options Output (Return Type). When JS reaches a
	return type, it stops execution.
	9- A function can only return 1 output.
	10- A function can have 1 or more inputs.
	11- A function can be defined inside another function
	12- A function is executed when it is invoked, or called.
	13- A function can optionaly be asynchronous
	14- Task 1 -> Task 2 -> Task 3 (Synchronous Code)
	15- Task 1
		Task 2
		Task 3
		(Asynchronous)
	16- async/await are used to make asynchronous and synchronous.
	17- Syntax:

		function name(OPTIONAL INPUT(S) GOES HERE){
			// code to be executed.
		}
	18- Function naming rules are same as Variable Naming Rules.

*/

function myFunction(){
	console.log("Function execution started!");
	alert("This is alert from myFunction!");
	console.log("Function execution ended!");
}

function multiplyNums(number1, number2){
	console.log("<<<<<<<<<<< multiplyNums >>>>>>>>>>>");

	console.log("Number 1: " + number1);
	console.log("Number 2: " + number2);

	if(number1 == undefined){
		console.log("Number 1 can't be undefined!");
		return;
	}

	if(number2 == undefined){
		console.log("Number 2 can't be undefined!");
		return;
	}

	console.log(number1 * number2);
}

function multiplyNumsAndReturn(number1, number2){
	console.log("<<<<<<<<<<< multiplyNumsAndReturn >>>>>>>>>>>");

	console.log("Number 1: " + number1);
	console.log("Number 2: " + number2);

	if(number1 == undefined){
		console.log("Number 1 can't be undefined!");
		return;
	}

	if(number2 == undefined){
		console.log("Number 2 can't be undefined!");
		return;
	}

	return number1 * number2;
}

multiplyNums(2, 30);

multiplyNums();

var result = multiplyNumsAndReturn(10, 20);

console.log(result);

// ------------- Alert, Prompt, Confirm ----------------

var fNum = prompt("Enter first number!");
console.log(fNum);

var secondNum = prompt("Enter second number!");
console.log(secondNum);

multiplyNums(fNum, secondNum);

var confirmation = confirm("Are you sure?");
if(confirmation == true){
	console.log("User clicked on OK Button.");
} else {
	console.log("User clicked on the Cancel Button.");
}

// ------------- Objects ----------------

var trainer = {
	name: "Shajeel Afzal",
	domain: "Technical",
	isRealTrainer: true,
	location: {
		city: "Okara",
		province: "Punjab",
		country: "Pakistan"
	},
	mic: [
		{
			name: "Blue Snowball"
		},
		{
			name: "ZOOM H6"
		}
	],
};

console.log(trainer.name);
console.log(trainer.mic[0].name);

console.log(trainer["name"]);

// ------------- Arrays ----------------

var course1 = "Technical";
var course2 = "Non-Technical";
var course3 = "Creative";

var courses = new Array("Tech", "Non-Tech", "Creative");
console.log(courses[2]);


courses[0] = "Technical";

console.log(courses[50]);

// Another way of creating Array
var students = new Array();
students[0] = "Bilal Akhtar";

// Array Literal (Recommended way)
var staff = ["Shajeel", "Zia", "Asghar", "Usman"];

console.log(staff.length);

// ------------- Assosiative Arrays ----------------

/* 
	arrays with named indexes are called 
	associative array (text instead of numbers)
*/

var machine = [];
machine["processor"] = "Ryzen 3900";
machine["RAM"] = "16x2 DDR4 3600";
machine["Motherboard"] = "MSI 530 Gaming Wifi";

console.log(machine["RAM"]);

// ------------- Math Object ----------------

console.log(Math.PI);
console.log(Math.pow(2, 4));

// Read more: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math

// ------------- Date Object ----------------

var today = new Date();
var yesterday = new Date();

// UTC: 1970 00:00:00
// 1 second: 1000 milliseconds
// 1 minutes: 1000 x 60
// 1 hour: 1000 x 60 x 60
// 1 day: 1000 x 60 x 60 x 24 = 86,400,4000

/* 
	FB Post > 11:10 AM (Pakistan Time) 
	[But it is 11:10 PM in USA]

	Pakistan Time > UTC (6:13 am)
	USA > UTC to local time (11:10 pm)

	Australia > UTC to Australia Time
*/

console.log(today);

console.log(new Date(86400000));

// ------------- DOM Selection Elements ----------------

/*

	JS Selection Methods!

	1- getElementById (Finds the element by ID)
	2- getElementsByClassName (Finds the Elements based on class name)
	3- getElementsByTagName (Finds the elements by Tag Name.)

*/

var headingElement = document.getElementById("heading");
headingElement.innerHTML = "h1 content changed from JS.";

var heading2Elements = document.getElementsByClassName("heading2");

heading2Elements[0].innerHTML = "2nd heading updated from the JS.";

var allH1Tags = document.getElementsByTagName("h1");

allH1Tags[0].innerHTML = "Content updated via JS>>>";

document.body.childNodes; // retursn an array of all elements inside Body Tag.

document.firstChild; // returns the first child node of the element

allH1Tags[0].parentNode;

// ------------- Event Handlging ----------------

function onButtonClick(){
	alert("Thanks for clicking on the Button!");
}

function onPageLoaded(){
	alert("The page has been loaded successfully");
}

function onPageUnload(){
	alert("The page has been unloaded!");
}

function inputChanged(){
	console.log("<<<< inputChanged >>>>");
	// var userInput = document.getElementById("name").value;
	// console.log(userInput);
}

// ------------- Event Propagation ----------------

/*

	1- Capturing
		The innermost element's event is handled first.
		Capturing goes down the DOM.

	2- Bubbling
		The outermost element's event is handled first.
		Bubbling goes up the DOM.

	addEventListener(event, function, useCapturing);

	// Capturing
	addEventListener("click", myFunction, true);

	// Bubbling
	addEventListener("click", myFunction, false);

*/

function onDivClick(){
	console.log("<<<<<< onDivClick >>>>>>");
}

function onPClick(){
	console.log("<<<<<< onPClick >>>>>>");	
}

// ------------- JS Form Validation ----------------

function validateForm(){
	console.log("<<<<< validateForm >>>>>");

	var num1InputElement = document.getElementById("num1");
	var num2InputElement = document.getElementById("num2");

	var num1 = num1InputElement.value;
	var num2 = num2InputElement.value;

	console.log(num1);
	console.log(num2);

	if(num1 == num2){
		return true;
	} else {
		return false;
	}
}

// ------------- ECMAScript 6 ----------------

/*

	var variableName;
	let c = true;
	const constantVariable;

*/

if(true){
	let name = "Shajeel Afzal";

	const variabl = 123;
}

alert(name); // error

// for/of for in loop

let obj = {a: 1, b: 2, c: 3};

for(var v in obj){
	console.log(v);
}
