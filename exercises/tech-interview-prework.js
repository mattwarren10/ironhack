//OBJECT EXERCISES


//Write a function that receives an array of names and returns them in a string with , between them. The final two must be separated by 'and'. 

var names;

names = [ "Canada", "Mexico", "Turkey", "Japan" ];

function prepare (arr) {
    var string = "";
    for (i=0; i<arr.length-1; i++) {
        string += arr[i] + ", ";
    }
    string += "and " + arr[arr.length-1];
    return string;
}

console.log( prepare(names) ); // Should be Canada, Mexico, Turkey and Japan



//Write a function that receives an object and returns an array of its values.

var country, countryArray;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo"
};


function objectToArray(object) {
    arr = [];
    for (var key in country) {
        arr.push(country[key]);
    }
    return arr;
}



// Should be [ "Uruguay", "South America", "Montevideo" ]
countryArray = objectToArray(country);
console.log(countryArray);







//MORE EXERCISES



//A. Sequence addition
//Write a function that receives a number and loops from 1 to the number and on each run through adds the current and previous numbers and prints out the result.

function addSequence (number) {
    var counter = 1;
    for (i=0; i<number; i++) {
        print = i + counter
        console.log(print)
        counter++
    }
}

addSequence(15);

// 1
// 3
// 5
// 7
// 9
// 11
// 13
// 15
// 17
// 19
// 21
// 23
// 25
// 27
// 29

//B. Print strings with a minimum length
//Write a function that receives a number that is the minimum length and an array of strings. Loop through the array of strings and print only those that are equal to or above the minimum length.

var strs = [
    "I like pie.", "Hello.", "Shorts.", "This is a long one.",
    "Kinda medium.", "A.", "Shorty."
];

function printMinimum (number, strings) {
    var print = [];
    for (i=0; i < strings.length; i++) {
        if (strings[i].length >= number) {
            print.push(strings[i]);
        } 
    }
    console.log(print);
};

printMinimum(10, strs);
// => I like pie.
//    This is a long one.
//    Kinda medium.

printMinimum(7, strs);
// => I like pie.
//    Shorts.
//    This is a long one.
//    Kinda medium.
//    Shorty.

printMinimum(2, strs);
// => I like pie.
//    Hello.
//    Shorts.
//    This is a long one.
//    Kinda medium.
//    A.
//    Shorty.


//C. Secret message decoder
//Write a function that decodes a secret message hidden in an array of words. Each word contains one letter of the message. Go through the words in order and retrieve one character from each of them. For the 1st word, grab the 1st character, for the 2nd word, the 2nd character and so on. When you get to the 6th word, start from the 1st character again. Take each of those characters and add them to a new string to form the message. Finally, return the message. Once you have your decode() function this code should work for you:
var words, message;

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];

function decode (arr) {
    var print = "";
    for (i=0; i<5 ; i++) {
        print += arr[i][i];
    }
    for (i=5; i<8 ; i++) {
        print += arr[i][i-5];
    }
    return print
}

// message should be "dynamite"
message = decode(words);
console.log(message);


//D. Array looper
//Write a function that receives an array and a string. Print all the values inside the array by looping through it. Depending on the value of the string you will loop through the array in one of four different ways. For example take this array:


var foods = [ "pizza", "cookies", "ice cream", "steak", "burgers", "bread" ];

function looper (arr, str) {
var print = [];
    if (str === "forwards") {
        for (i=0; i < arr.length; i++) {
            print.push(arr[i]);
        }
        return print;
    } else if (str === "backwards") {
        for (i = arr.length; i > 0; i--) {
            print.push(arr[i-1]);
        }
        return print;
    } else if (str === "evens") {
        for (i=0; i < arr.length; i+=2) {
            print.push(arr[i]);
        }
        return print;
    } else if (str === "odds") {
        for (i=1; i < arr.length; i+=2) {
            print.push(arr[i]);
        }
        return print;
    }
}

console.log(looper(foods, "forwards"));
console.log(looper(foods, "backwards"));
console.log(looper(foods, "evens"));
console.log(looper(foods, "odds"));





//E. Add foods to an array
//Write a function that receives an array of foods and checks if it contains the values "pizza" and "bacon". If either of those values is missing, add it to the array.

var foods1 = [ "cookies", "steak" ];
addFoods(foods1);
// foods1 should now be [ "cookies", "steak", "pizza", "bacon" ]

var foods2 = [ "pizza", "salad" ];
addFoods(foods2);
// foods2 should now be [ "pizza", "salad", "bacon" ]

var foods3 = [ "pizza", "salad" , "bacon", "chili" ];
addFoods(foods3);
// foods3 should still be [ "pizza", "salad" , "bacon", "chili" ]

function addFoods (arr) {
    if (arr.indexOf("pizza", 0) && arr.indexOf("bacon", 0) === -1) {
        arr.push("pizza", "bacon");
    } else if (arr.indexOf("pizza", 0) === -1) {
        arr.push("pizza");
    } else if (arr.indexOf("bacon", 0) === -1) {  
        arr.push("bacon");
    }
    return arr;
}

console.log(foods2);




