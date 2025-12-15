<div align="center"><img src="https://github.com/ksyv/holbertonschool-web_front_end/blob/main/baniere_holberton.png"></div>

# Introduction

## Table of Contents :

  - [0. Users Count](#subparagraph0)
  - [1. Get User ID](#subparagraph1)
  - [2. Get User](#subparagraph2)
  - [3. Greet User](#subparagraph3)
  - [4. Calcul Total](#subparagraph4)
  - [5. Rick and Morty Characters](#subparagraph5)

## Resources
### Read or watch:
* [Asynchronous Programming in Dart](https://dart.dev/libraries/async/async-await)

## Requirements
### General
* All your files will be interpreted/compiled on Ubuntu 20.04 LTS usingDart 3.x.x
* Use the Providedutil.dartfile(no need to push it)
* All your files should end with a new line
* AREADME.mdfile, at the root of the folder of the project, is mandatory

## Task
### 0. Users Count <a name='subparagraph0'></a>

Create a function <code>usersCount()</code> that prints the number of users.

Function prototype : <code>Future&lt;void&gt; usersCount()</code>
Gets the user count by calling the provided function <code>fetchUsersCount()</code>. which will simulate fetching data from an api.

* Do not push  <code>0-util.dart</code>

```
achref@achref:~$ cat 0-main.dart
import '0-users_count.dart';

main() async {
  await usersCount();
}
achref@achref:~$ cat 0-util.dart

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

achref@achref:~$ dart 0-main.dart
19
achref@achref:~$
```

---

### 1. Get User ID <a name='subparagraph1'></a>

Create a function <code>getUserID()</code> that returns a future string representing the user’s ID.

Function prototype : <code>Future&lt;String&gt; getUserId()</code>

Gets the user data by calling the provided function <code>fetchUserData()</code> which will simulate fetching data from an api.

```
achref@achref:~$ cat 1-main.dart
import '1-get_user_id.dart';


main() async {
  print(await getUserId());
}
achref@achref:~$ cat 1-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

achref@achref:~$ dart 1-main.dart
7ee9a243-01ca-47c9-aa14-0149789764c3
achref@achref:~$
```

---

### 2. Get User <a name='subparagraph2'></a>

Sometimes fetching data from an api could produce unwanted results and may cause errors therefore it’s wise to handle these errors before they become a problem.

Create a function <code>getUser()</code> that prints the user’s string representation.

Function prototype : <code>Future&lt;void&gt; getUser()</code>

Gets the user data by calling the provided function <code>fetchUser()</code>

Must use : try-catch
If an error occurs the function should print “<code>error caught:  &lt;error&gt;</code> ”

```
achref@achref:~$ cat 2-main.dart
import '2-get_user.dart';

main() async {
  getUser();
}
achref@achref:~$ cat 2-util.dart
Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

achref@achref:~$ dart 2-main.dart
error caught: Cannot locate user
achref@achref:~$
```

---

### 3. Greet User <a name='subparagraph3'></a>

Create a function <code>greetUser()</code> that returns a string as follows <code>Hello &lt;username&gt;</code> .

Function prototype : <code>Future&lt;String&gt; greetUser()</code>

Gets the user data by calling the provided function <code>fetchUserData()</code>

Must use try-catch
If an error occurs the function should return : <code>error caught: &lt;error&gt;</code>

Create a function <code>loginUser()</code>

Function prototype : <code>Future&lt;String&gt; loginUser()</code>

Should call the provided function <code>checkCredentials()</code> which returns a <code>future bool</code>.

* If <code>checkCredentials()</code> returns <code>true</code> <code>loginUser()</code> should print <code>There is a user: true</code> and call <code>greetUser()</code> to return it’s value
* If <code>checkCredentials()</code> returns <code>false</code> <code>loginUser()</code> should print <code>There is a user: false</code> and return <code>Wrong credentials</code>

Must use try-catch
If an error occurs the function should return <code>error caught: &lt;error&gt;</code>

```
achref@achref:~$ cat 3-main.dart
import '3-greet_user.dart';

main() async {
  print(await loginUser());
}
achref@achref:~$ cat 3-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

achref@achref:~$ dart 3-main.dart
There is a user: true
Hello admin
achref@achref:~$
```

---

### 4. Calcul Total <a name='subparagraph4'></a>

Create a function <code>calculateTotal()</code> that calculates the total price of items for a certain user.

* Gets the user data by calling the provided function<code>fetchUserData()</code>
* Gets the user orders by calling the provided function <code>fetchUserOrders(id)</code> which accepts one argument : ID of the user
* Gets the products price by calling the provided function <code>fetchProductPrice(product)</code> which accepts one argument : product name
* Returns the total price of items
* Must use try-catch
* If an error occurs the function should return -1

```
achref@achref:~$ cat 4-main.dart
import '4-get_sum.dart';


main() async {
  print(await calculateTotal());
}

achref@achref:~$ cat 4-util.dart
import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}
achref@achref:~$ dart 4-main.dart
30.3
achref@achref:~$
```

---

### 5. Rick and Morty Characters <a name='subparagraph5'></a>

Create a file “pubspec.yaml” containing the following lines :

```
name: rick_and_morty

dependencies:
  http: ^1.2.0

environment:
  sdk: ">=3.0.0 <4.0.0"
```

Then run :
<code>dart pub get</code>

Now we can use http to send requests to an online api.

Create a function <code>printRmCharacters()</code> that prints all Rick and Morty Characters.

* You should use <a href="/rltoken/sw4eYN8hy3A4hwV3gOWpRg" target="_blank" title="Rick and Morty API">Rick and Morty API</a> to get the data required
* Must use try-catch
* If an error occurs the function should return <code>error caught:  &lt;error&gt;</code>

```
achref@achref:~$ cat 5-main.dart
import 'rick_and_morty.dart';

main() async {
  await printRmCharacters();
}
achref@achref:~$
achref@achref:~$ dart 5-main.dart
Rick Sanchez
Morty Smith
Summer Smith
…
Amish Cyborg
Annie
```

---


## Authors
Ksyv - [GitHub Profile](https://github.com/ksyv)
