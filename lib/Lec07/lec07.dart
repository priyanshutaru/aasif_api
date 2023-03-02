// ignore_for_file: prefer_const_constructors

import 'package:aasif_api/Lec07/apiservices.dart/apiservices.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class MySelfApi extends StatefulWidget {
  const MySelfApi({super.key});

  @override
  State<MySelfApi> createState() => _MySelfApiState();
}

class _MySelfApiState extends State<MySelfApi> {
  List<GetPostModel> postData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Api"),
      ),
      body: FutureBuilder(
        future: getPostData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              // itemCount: postData.length,
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Divider(
                              color: Colors.black12,
                              thickness: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(child: Text("Id:")),
                                CircleAvatar(
                                    child: Text(postData[index].id.toString())),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Title:"),
                                SizedBox(
                                  width: 60,
                                ),
                                Expanded(
                                    child:
                                        Text(postData[index].title.toString())),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Descryption:"),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                    child:
                                        Text(postData[index].body.toString())),
                              ],
                            ),
                            Divider(
                              color: Colors.black12,
                              thickness: 5,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<GetPostModel>> getPostData() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        postData.add(GetPostModel.fromJson(index));
      }
      return postData;
    } else {
      return postData;
    }
  }
}
