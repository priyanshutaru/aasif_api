// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:aasif_api/Lec08/model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiByMySelf2 extends StatefulWidget {
  const ApiByMySelf2({super.key});

  @override
  State<ApiByMySelf2> createState() => _ApiByMySelf2State();
}

class _ApiByMySelf2State extends State<ApiByMySelf2> {
  List<EmailPostModel> getmailData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("By My 2"),
      ),
      body: FutureBuilder(
        future: fetchEmail(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else
            return ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                // final item = getmailData[index];
                return Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // Image.network(getmailData[index].title.toString())
                    // Text(getmailData[index].name.toString()),
                    // Text(item.phone.toString()),
                    // Text(item["company"].bs.toString())
                    // Text(getmailData[index]['name'].toString())
                    // Text("address"),
                    // Text(getmailData![index].address!.geo!.lng.toString()),
                    // Text(getmailData![index].address!.city.toString()),
                    // Text(getmailData[index].company!.name.toString()) this one is bettor than other you have to mention only one time not
                    Text(getmailData[index].address!.geo!.lng.toString())
                  ],
                );
              },
            );
        },
      ),
    );
  }

  Future<List<EmailPostModel>> fetchEmail() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        getmailData.add(EmailPostModel.fromJson(index));
      }
      return getmailData;
    } else {
      return getmailData;
    }
  }
}
