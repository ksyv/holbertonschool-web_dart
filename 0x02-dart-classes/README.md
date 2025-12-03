<div align="center"><img src="https://github.com/ksyv/holbertonschool-web_front_end/blob/main/baniere_holberton.png"></div>

# Dart - Classes

## Table of Contents :

  - [0. Welcome.](#subparagraph0)
  - [1. User to Json](#subparagraph1)
  - [2. Password](#subparagraph2)
  - [3. Private Password](#subparagraph3)
  - [4. Mutables](#subparagraph4)
  - [5. Json to User](#subparagraph5)
  - [6. Inheritance](#subparagraph6)

## Resources
### Read or watch:
* [Dart Programming - Classes](https://www.tutorialspoint.com/dart_programming/dart_programming_classes.htm)
* [Dart Inheritance](https://www.tpointtech.com/dart-inheritance)
* [Null-aware Operators in Dart](https://medium.com/@thinkdigitalsoftware/null-aware-operators-in-dart-53ffb8ae80bb)

## Task
### 0. Welcome. <a name='subparagraph0'></a>

Create a <code>User</code> class:

* That contains a property called <code>name</code>
* and a method called <code>showName</code>  that returns a string representation of User “Hello <code>name</code>”

```
youssef@Holberton/Dart$ cat 0-main.dart
import '0-class.dart';

void main() {
  final firstPer = User();
  firstPer.name = "Youssef Belhadj";
  print(firstPer.showName());
}
youssef@Holberton/Dart$ dart  0-main.dart
Hello Youssef Belhadj
youssef@Holberton/Dart$
```

---

### 1. User to Json <a name='subparagraph1'></a>

Create a <code>User</code> class:

* <p>Properties :</p>

  * <code>name</code> : String
  * <code>age</code> : int
  * <code>height</code>: double
* <p>And a method called <code>toJson()</code> that returns a map representation of the User .</p>

```
youssef@Holberton/Dart$ cat 1-main.dart
import '1-usertojson.dart';

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson());
}
youssef@Holberton/Dart$dart 1-main.dart
{name: Youssef, age: 25, height: 1.89}
youssef@Holberton/Dart$
```

---

### 2. Password <a name='subparagraph2'></a>

Create a class called <code>Password</code> and give it a string property called <code>password</code>.

Add a method to <code>Password</code> called<code>isValid</code> that returns true only

* The length of <code>password</code> should be between 8 and 16.
* <code>password</code> should contains Uppercase letters and lowercase letters
* <code>password</code> should contains numbers .
* <code>toString</code> :


  * Example <code>password = "ShouldWorkf7ne"</code>
  * Override the <code>toString</code> method of Password class to prints <code>Your Password is: ShouldWorkf7ne</code>.

```
youssef@Holberton/Dart$ cat 2-main.dart
import '2-password.dart';

void main() {
  final ps = Password();
  ps.password = "Just3z";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
  ps.password = "ShouldWorkf7ne";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
}

youssef@Holberton/Dart$dart 2-main.dart
Just3z is Not a Valid Password
Your Password is: Just3z
ShouldWorkf7ne is a Valid Password
Your Password is: ShouldWorkf7ne
youssef@Holberton/Dart$
```

---

### 3. Private Password <a name='subparagraph3'></a>

Copy the last task and make the property   <code>password</code> private

```
youssef@Holberton/Dart$ cat 3-main.dart
import '3-private_password.dart';

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());
  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}

youssef@Holberton/Dart$dart 3-main.dart
Your Password is Passwordcode
false
Your Password is PasswordDecode3
true
youssef@Holberton/Dart$
```

---

### 4. Mutables <a name='subparagraph4'></a>

Lets make our data mutable now. Copy the code from the last task and add the <code>Getters</code> and <code>Setters</code> so we can assign and retrieve the value.

* Should use <code>get</code> keyword for the getter.
* Should use <code>set</code> keyword for the setter.

```
youssef@Holberton/Dart$ cat 4-main.dart
import '4-mutables.dart';
void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());
  password.password = "Youssef4321";
  print(password.isValid());
  print(password.toString());
}
youssef@Holberton/Dart$ dart 4-main.dart
false
Your Password is: Passwordecode
true
Your Password is: Youssef4321
youssef@Holberton/Dart$
```

---

### 5. Json to User <a name='subparagraph5'></a>

Copy the code that you did in the <code>1-usertojson.dart</code> add property called <code>id</code> to the <code>User</code> class

* Add <code>id</code> to <code>toJson()</code> method

Create a new instance called <code>fromJson</code> it accept <code>Map</code>  as parameter should return every value inside it.

* Prototype :


  * <code>static User fromJson(Map&lt;dynamic, dynamic&gt; userJson)</code>

Create a method called <code>toString()</code> that returns a string => User(id : <code>id</code> ,name: <code>name</code>,  age: <code>age</code>, height: <code>height</code>);

```
youssef@Holberton/Dart$ cat 5-main.dart
import '5-json_to_user.dart';

void main() {
  final djo = User(id: 1, name: "Djo", age: 25, height: 1.89);
    print(djo.toJson());
  Map map = {'id': 3, 'name': 'Youssef', 'age': 26, 'height': 1.9};
  final youssef = User.fromJson(map);
  print(djo.toString());
  print(youssef.toString());
}
youssef@Holberton/Dart$ dart 5-main.dart 
{id: 1, name: Djo, age: 25, height: 1.89}
User(id : 1 ,name: Djo,  age: 25, height: 1.89)
User(id : 3 ,name: Youssef,  age: 26, height: 1.9)
youssef@Holberton/Dart$
```

---

### 6. Inheritance <a name='subparagraph6'></a>

Copy the class <code>Password</code> from <code>4-mutables.dart</code> -> <code>6-password.dart</code>:

Copy the last task and extend the <code>Password</code> class to <code>User</code>

* <p>Create a new property in the <code>User</code> class called <code>user_password</code> that contain the password.</p>
* <p>Add null check to all targets in <code>6-password.dart</code> and null coalescing operator if necessary.</p>
* <p>Call <code>isValid</code> method from <code>Password</code> class after you passed <code>user_password</code> to <code>Password</code> class.</p>

```
youssef@Holberton/Dart$ cat 6-main.dart
import '6-inheritance.dart';

void main() {
  final djo = User(
      id: 1, name: "Djo", age: 25, height: 1.89, user_password: "Azert23defde");
  print('<===========Json=========>:');
  print('\n');
  print(djo.toJson());
  Map map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defde"
  };
  final youssef = User.fromJson(map);
  print('\n');
  print('<===========Test1===========>:');
  print('\n');
  print(djo.toString());
  print(youssef.toString());
  print('\n');
  print('<===========Test2===========>:');
  print('\n');
  djo.user_password = "holberton98";
  youssef.user_password = "AZERfghn6789";
  print(djo.toString());
  print(youssef.toString());
}
youssef@Holberton/Dart$ dart 6-main.dart
<===========Json=========>:


{id: 1, name: Djo, age: 25, height: 1.89}


<===========Test1===========>:


User(id : 1 ,name: Djo, age: 25, height: 1.89, Password: true)
User(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)


<===========Test2===========>:


User(id : 1 ,name: Djo, age: 25, height: 1.89, Password: false)
User(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)
youssef@Holberton/Dart$
```

---


## Authors
Ksyv - [GitHub Profile](https://github.com/ksyv)
