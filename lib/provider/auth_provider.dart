import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:friendship/model/auth_model.dart';
import 'package:http/http.dart' as http;


class AuthProvider with ChangeNotifier{
  Future<void> login(Auth auth) async {
    const url = 'url';

    var response = await http.post(Uri.parse(url),
      body: jsonEncode({
        "email": auth.password,
        "password": auth.password,
      }));
    if(response.statusCode == 200){
      print(json.decode(response.body)['accessToken']);
    } else {
      print(response.body);
    }

  }
}