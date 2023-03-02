import 'dart:convert';

import 'package:aasif_api/Lec09/model.dart';
import 'package:http/http.dart' as http;

getProducts() async {
  final resposnse = await http.get(
    Uri.parse('https://dummyjson.com/products'),
  );

  try {
    if (resposnse.statusCode == 200) {
      var data = myProductFromJson(resposnse.body);
      return data.products;
    } else {
      print("Error");
    }
  } catch (e) {
    print(e.toString());
  }
}
