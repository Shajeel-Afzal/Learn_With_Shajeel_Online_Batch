

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









































































































