import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try {
        final String userDataJson = await fetchUserData();
        final Map<String, dynamic> userData = jsonDecode(userDataJson);
        final String username = userData['username'] ?? 'unknown user';
        return 'Hello $username';

    } catch (error){
        return 'error caught: $error';
    }
}

Future<String> loginUser() async {
    try {
        final bool credentialsValid = await checkCredentials();

        if (credentialsValid) {
            print('There is a user: true');
            return await greetUser();

        } else {
            print('There is a user: false');
            return 'Wrong credentials';
        }
    } catch (error) {
        return 'error caught: $error';
    }
}