import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthDataProvider {
  final http.Client client;
  AuthDataProvider({@required this.client}) : assert(client != null);

  Future<http.Response> loginUser({String email, String password}) async {
    http.Response response = await http.post(Uri.parse('LOGIN_URL'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({'phone': email, 'password': password}));
    return response;
  }

  Future<http.Response> resetPassword({String email}) async {
    http.Response response = await http.post(Uri.parse('RESET_PASSWORD_URL'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          'phone': email,
        }));
    return response;
  }
}
