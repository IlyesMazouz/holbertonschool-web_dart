import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> jsonData = jsonDecode(userData);
    return jsonData['id'];
  } catch (e) {
    throw Exception('Error fetching user ID: $e');
  }
}
