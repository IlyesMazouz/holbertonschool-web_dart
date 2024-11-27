import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // Base URL for the Rick and Morty API
    final url = Uri.parse('https://rickandmortyapi.com/api/character');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Parse the JSON response
      final data = jsonDecode(response.body);

      // Extract character names from the results
      final characters = data['results'] as List;
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw 'Failed to load data with status code: ${response.statusCode}';
    }
  } catch (error) {
    // Handle errors
    print('error caught: $error');
  }
}
