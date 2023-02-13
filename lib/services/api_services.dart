import 'dart:convert';
import 'package:http/http.dart' as http;

// Function to make the API call
Future<List> fetchData() async {
  final response = await http.get('https//naver.com');

  if (response.statusCode == 200) {
    // If the call to the API was successful, parse the JSON
    List data = json.decode(response.body);
    return data;
  } else {
    // If that call was not successful, throw an error
    throw Exception('Failed to load data');
  }
}