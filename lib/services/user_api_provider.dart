import 'dart:convert';

import 'package:exemple_to_api/models/user.dart';
import 'package:http/http.dart' as http;

class UserProvider {
// https://jsonplaceholder.typicode.com/users

  Future<List<User>> getUser() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('error');
    }
  }
}
