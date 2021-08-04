import 'dart:convert';

import 'package:bitcoinnews/routes.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  signUp(String email, String password) async {
    http.Response response = await http.post(
      Uri.parse(Routes().signIn()),
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );

    print(response.body);
  }
}