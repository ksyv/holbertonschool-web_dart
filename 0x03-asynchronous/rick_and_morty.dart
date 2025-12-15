import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiUrl= 'https://rickandmortyapi.com/api/character';

Future<String> printRmCharacters() async {
    try {
        final http.Response response = await http.get(Uri.parse(apiUrl));
        
        if (response.statusCode == 200) {
            final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
            final List<dynamic> characters = jsonResponse['results'];

            for (var character in characters) {
                print(character['name']);
            }
            return 'all right';
        } else {
            return 'error caught: Failed to load characters. Status code: ${response.statusCode}';
        }
    } catch (error) {
        return 'error caught: $error';
    }
}