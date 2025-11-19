<div align="center"><img src="https://github.com/ksyv/holbertonschool-web_front_end/blob/main/baniere_holberton.png"></div>

# Resources

## Table of Contents :

  - [0. Hello Function](#subparagraph0)
  - [1. Concatenate Strings](#subparagraph1)
  - [2. Add/Sub](#subparagraph2)
  - [3. Factorial](#subparagraph3)
  - [4. Outer Inner](#subparagraph4)
  - [5. Calculate Area](#subparagraph5)
  - [6. Convert to fahrenheit](#subparagraph6)
  - [7. Basketball Shots](#subparagraph7)
  - [8. Longest Unique Substring](#subparagraph8)
  - [9. Palindrome](#subparagraph9)
  - [10. Longest Palindrome](#subparagraph10)

## Resources
### Read or watch:
* [Dart - Syntax](https://www.tutorialspoint.com/dart_programming/dart_programming_syntax.htm)
* [Dart - Conditions](https://www.tutorialspoint.com/dart_programming/dart_programming_decision_making.htm)
* [Dart - Loops](https://www.tutorialspoint.com/dart_programming/dart_programming_loops.htm)
* [Dart - Map](https://www.tutorialspoint.com/dart_programming/dart_programming_map.htm)
* [Dart - Cheatsheet](https://dart.dev/resources/dart-cheatsheet)
* [Iterables Collections](https://dart.dev/libraries/collections/iterables)

## Task
### 0. Hello Function <a name='subparagraph0'></a>

Write a dart function <code>helloFunction()</code>  that accepts one argument String  and print <code>Hello &lt;str&gt; from dart</code>

* Function prototype :<code>void helloFunction(String str)</code>

```
Holberton@school:Dart$ cat 0-main.dart
import '0-hellofunc.dart';

void main() {
  helloFunction("Holberton");
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 0-main.dart
Hello Holberton from dart
Holberton@school:Dart$
```

---

### 1. Concatenate Strings <a name='subparagraph1'></a>

Write a dart function <code>concatStr()</code>  that accepts two arguments <code>str1</code>, <code>str2</code>.

* Function prototype : <code>String concatStr(String str1, String str2)</code>
* Leave space between <code>str1</code> and <code>str2</code>

```
Holberton@school:Dart$ cat 1-main.dart
import '1-concat_strings.dart';

void main() {
  print(concatStr("Holberton", "School"));
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 1-main.dart
Holberton School
Holberton@school:Dart$
```

---

### 2. Add/Sub <a name='subparagraph2'></a>

Write three functions in dart the first function <code>add()</code>  that accepts two arguments <code>a</code>, <code>b</code>  and return the sum.
And the secode function  <code>sub()</code> that  accepts two arguments <code>a</code>, <code>b</code>  and return Subtraction of them.
The third function  <code>showFunc()</code> that returns a message with the output of the two other function.

* First Function prototype : <code>int add(int a, int b)</code>
* Second Function prototype : <code>int sub(int a, int b)</code>
* Third Function prototype : <code>String showFunc(int a, int b)</code>

```
Holberton@school:Dart$ cat 2-main.dart
import '2-sumfunc.dart';

void main(List<String> args) {
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  print(showFunc(a, b));
}
Holberton@school:Dart$
Holberton@school:Dart$ dart 2-main.dart 10 15
Add 10 + 15 = 25
Sub 10 - 15 = -5
Holberton@school:Dart$
```

---

### 3. Factorial <a name='subparagraph3'></a>

Write recursive function to compute the factorial of  a positive integer <code>fact()</code>

* Function prototype : <code>int fact(int f)</code>

  * If <code>f == 1</code> the function return 1
  * If <code>f &lt;= 0</code> return 1

```
Holberton@school:Dart$ cat 3-main.dart
import '3-factors.dart';

void main() {
  print(fact(0));
  print(fact(1));
  print(fact(5));
}


Holberton@school:Dart$
Holberton@school:Dart$ dart 3-main.dart
1
1
120
Holberton@school:Dart$
```

---

### 4. Outer Inner <a name='subparagraph4'></a>

Write two functions the first function <code>outer()</code> take two argument <code>name</code>, <code>id</code> and print the output of the inside function <code>inner()</code>.

* Function prototype : <code>void outer(String name, String id)</code>
* Function prototype : <code>String inner()</code>
* <code>name</code> will always consist of two words

```
Holberton@school:Dart$ cat 4-main.dart
import '4-outer_inner.dart';

void main() {
  outer("Youssef Belhadj", "001");
}

Holberton@school:Dart$
Holberton@school:Dart$ dart 4-main.dart
Hello Agent B.Youssef your id is 001
Holberton@school:Dart$
```

---

### 5. Calculate Area <a name='subparagraph5'></a>

Create a function <code>calculateArea()</code> that accepts two variables <code>height</code> and <code>base</code> and returns the area of the triangle.

Function prototype : <code>double calculateArea(double height, double base);</code>

The result should be rounded to two decimal places

```
achref@achref:~$ cat 5-main.dart
import '5-calculate-area.dart';

main() {
  print(calculateArea(20,7));
  print(calculateArea(10,7));
  print(calculateArea(8.5,3.7));
}
achref@achref:~$
achref@achref:~$ dart 5-main.dart
70.0
35.0
15.73
achref@achref:~$
```

---

### 6. Convert to fahrenheit <a name='subparagraph6'></a>

Create a function <code>convertToF()</code> that accepts a list of doubles representing a list of temperatures in celsius, converts them to fahrenheit and returns them in a list.

Function prototype : <code>List&lt;double&gt; convertToF(List&lt;double&gt; temperaturesInC);</code>

To convert temperature from celsius to fahrenheit you need to multiply it by 9, followed by a division by 5 and finally add 32.

Let’s for example convert 25 degrees celsius : (25°C × 9/5) + 32 = 77°F
You have to use the map method.
All the results should be rounded to two decimal points.

```
achref@achref:~$ cat 6-main.dart
import '6-convert-to-fahrenheit.dart';

main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}
achref@achref:~$
achref@achref:~$ dart 6-main.dart
[77.0, 78.8, 73.4, 80.6, 86.0]
[72.5, 78.8, 81.14, 74.48, 77.0]
[24.44, 28.4, 32.9, 23.0, 28.94]
achref@achref:~$
```

---

### 7. Basketball Shots <a name='subparagraph7'></a>

Given two maps that represents the number of successful shots for each shot type in a basketball game between team A and Team B.

Create a function <code>whoWins()</code> that calculates the total number of points for each team and return the winning team:

* If teamA points > teamB points return 1
* If teamA points < teamB points return 2
* If teamA points = TeamB points return 0

A free throw shot counts as 1 Point.

A 2 pointer shot counts as 2 Points.

A 3 pointer shot counts as 3 Points.

Function prototype : <code>int whoWins(Map&lt;String, int&gt; teamA, Map&lt;String, int&gt; teamB);</code>

```
achref@achref:~$ cat 7-main.dart
import '7-basketball-shots.dart';

main() {
  var teamA = {'Free throws' : 23, '2 pointers' : 32, '3 pointers': 16};
  var teamB = {'Free throws' : 31, '2 pointers' : 27, '3 pointers': 13};

  print(whoWins(teamA, teamB));
}
achref@achref:~$
achref@achref:~$ dart 7-main.dart
1
achref@achref:~$
```

---

### 8. Longest Unique Substring <a name='subparagraph8'></a>

Write a function <code>longestUniqueSubstring()</code> that accepts one argument <code>String</code> and returns the longest non-repeating substring.

Function prototype : <code>String longestUniqueSubstring(String str);</code>

If multiple substrings tie in length, return the one which occurs first.

```
achref@achref:~$ cat 8-main.dart
import '8-longest-unique-substring.dart';

main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
achref@achref:~$
achref@achref:~$ dart 8-main.dart
acbd
a
abcde
achref@achref:~$
```

---

### 9. Palindrome <a name='subparagraph9'></a>

Write a function <code>isPalindrome()</code> that accepts one argument <code>String</code> and returns <code>True</code> if the input <code>String</code> is a palindrome otherwise it returns <code>False</code>.

Function prototype: <code>bool isPalindrome(String s);</code>
A palindrome is a sentence that reads the same backward or forward.
If the length of the input string is less than 3 characters it doesn’t count as a palindrome.

```
achref@achref:~$ cat 9-main.dart
import '9-palindrome.dart';

main() {
  print(isPalindrome("aa"));
  print(isPalindrome("abcba"));
  print(isPalindrome("abcde"));
}
achref@achref:~$
achref@achref:~$ dart 9-main.dart
false
true
false
achref@achref:~$
```

---

### 10. Longest Palindrome <a name='subparagraph10'></a>

Write a function <code>longestPalindrome()</code> that accepts one argument <code>String</code> and returns the longest palindrome substring.

Function prototype : <code>String longestPalindrome(String s);</code>

A palindrome is a sentence that reads the same backward or forward.
If the length of the input string is less than 3 characters it doesn’t count as a palindrome.
You can use the function <code>isPalindrome()</code>.
If the input string doesn’t contain any substrings return <code>none</code>.

```
achref@achref:~$ cat 10-main.dart
import '10-longest-palindrome.dart';

main() {
  print(longestPalindrome("abcde"));
  print(longestPalindrome("azeghjhg"));
  print(longestPalindrome("aaabvf"));
}
achref@achref:~$
achref@achref:~$ dart 10-main.dart
none
ghjhg
aaa
achref@achref:~$
```

---


## Authors
Ksyv - [GitHub Profile](https://github.com/ksyv)
