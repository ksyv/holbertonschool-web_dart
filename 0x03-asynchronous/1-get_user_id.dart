import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
    String jsonString = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(jsonString);

    return userData['id'];
}