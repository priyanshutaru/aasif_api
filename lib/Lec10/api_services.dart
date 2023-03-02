import 'package:aasif_api/Lec10/model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

getDetails() async {
  final response =
      await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

  try {
    if (response.statusCode == 200) {
      var result = userDetailsFromJson(response.body);
      return result.data;
    } else {
      print("Erroe");
    }
  } catch (e) {
    print(e.toString());
  }
}
