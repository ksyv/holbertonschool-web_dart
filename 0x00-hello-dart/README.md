<div align="center"><img src="https://github.com/ksyv/holbertonschool-web_front_end/blob/main/baniere_holberton.png"></div>

# Titre du Projet (à remplacer)

## Table of Contents :

  - [0. Hello Holberton!](#subparagraph0)
  - [1. The Quotes](#subparagraph1)
  - [2. Print Number](#subparagraph2)
  - [3. Print Doubles](#subparagraph3)
  - [4. Print string](#subparagraph4)
  - [5. Assertion](#subparagraph5)
  - [6. Positive anything is better than negative nothing](#subparagraph6)

## Task
### 0. Hello Holberton! <a name='subparagraph0'></a>

Write a dart program that print <code>Hello Holberton!</code>  followed by a new line.

* Use the function <code>print</code>

```
youssef@Holberton/Dart$ dart 0-hello_holberton.dart
Hello Holberton!

youssef@Holberton/Dart$
```

---

### 1. The Quotes <a name='subparagraph1'></a>

Write a Dart program that prints exactly <code>"Programming is like building a multilingual puzzle</code>,

* <p>followed by a new line.</p>
* <p>Use the function <code>print</code></p>

```
youssef@Holberton/Dart$ dart 1-quotes.dart
"Programming is like building a multilingual puzzle

youssef@Holberton/Dart$
```

---

### 2. Print Number <a name='subparagraph2'></a>

Complete this <a href="/rltoken/p5XNTpuWaqbIsOuJSGYOxg" target="_blank" title="source code">source code</a> in order to print the integer stored in the variable number, followed by Battery street, followed by a new line.

* The output of the script should be:


  * the number, followed by <code>Battery street</code>,
  * followed by a new line
* You are not allowed to cast the variable number into a string
* Your code must be 4 lines long

```
youssef@Holberton/Dart$ dart 2-print_number.dart
98 Battery street

youssef@Holberton/Dart$
```

---

### 3. Print Doubles <a name='subparagraph3'></a>

Complete this<a href="/rltoken/gfSsUGZENvzTxTL4-XQtVQ" target="_blank" title=" source code"> source code</a> in order to print the doubles stored in the variable number with a precision of 2 digits.

* The output of the program should be:


  * <code>Double:</code> followed by the double with only 2 digits
  * followed by a new line

```
youssef@Holberton/Dart$ dart 3-print_double.dart
Double: 3.14

youssef@Holberton/Dart$
```

---

### 4. Print string <a name='subparagraph4'></a>

Complete this <a href="/rltoken/WoBtS9BwrpnBtyvHzgkYBw" target="_blank" title="source code">source code</a> in order to print 3 times a string stored in the variable str, followed by its first 9 characters.

* The output of the program should be:


  * 3 times the value of str
  * followed by a new line and  the 9 first characters of str
  * followed by a new line
* You are not allowed to use any loops or conditional statement
* Your program should be maximum 5 lines long

```
youssef@Holberton/Dart$ dart 4-print_string.dart > output 
youssef@Holberton/Dart$ cat -e output
Holberton SchoolHolberton SchoolHolberton School$
Holberton$
$
youssef@Holberton/Dart$
```

---

### 5. Assertion <a name='subparagraph5'></a>

Write a Dart program that validates a test score passed as a command-line argument

Complete this <a href="/rltoken/W-9UbIaeSkYuGUTn2CLZ8A" target="_blank" title="source code">source code</a> to create a program that:

* Takes a number as a command-line argument when running the program (as shown below in the output example)
* Checks if the number is greater than or equal to <code>80</code>
* If the score is >= <code>80</code>, prints <code>You Passed</code>
* Otherwise, throw an assertion error with the message <code>The score must be bigger or equal to 80</code>



```
youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 79
Unhandled exception:
'file:/youssef@Holberton/Dart/5-assertion.dart': Failed assertion: line 3 pos 10: 'nb >= 80': The score must be bigger or equal to 80
#0      _AssertionError._doThrowNew (dart:core-patch/errors_patch.dart:51:61)
#1      _AssertionError._throwNew (dart:core-patch/errors_patch.dart:40:5)
#2      main (file:/youssef@Holberton/Dart/5-assertion.dart:3:10)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)

youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 80
You Passed
youssef@Holberton/Dart$
```



<strong>Requirement:</strong>

* You MUST use assertions (no IF/ELSE statements allowed)

---

### 6. Positive anything is better than negative nothing <a name='subparagraph6'></a>

Write a dart Program That  given an  argument ,determine if  its positive or negative

* The variable number will store as a string you should converted to integer
* The output of the program should be:
* <p>The number, followed by</p>

  * if the number is greater than 0: <code>is positive</code>
  * if the number is 0: <code>is zero</code>
  * if the number is less than 0:<code>is negative</code>

```
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -4
-4 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 0
0 is zero
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -3
-3 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 10
10 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 6
6 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -10
-10 is negative
youssef@Holberton/Dart$
```

---


## Authors
Ksyv - [GitHub Profile](https://github.com/ksyv)
