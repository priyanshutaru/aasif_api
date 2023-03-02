// ignore_for_file: prefer_const_constructors, unused_import

import 'package:aasif_api/Lec09/model.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'apiservices.dart';

class ByMySelfComplex extends StatefulWidget {
  const ByMySelfComplex({super.key});

  @override
  State<ByMySelfComplex> createState() => _ByMySelfComplexState();
}

class _ByMySelfComplexState extends State<ByMySelfComplex> {
  // List<Product> product = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: FutureBuilder(
          future: getProducts(),
          builder: (context, AsyncSnapshot shnapshot) {
            if (!shnapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Product> product = shnapshot.data;
              return ListView.builder(
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = product[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(item.thumbnail),
                        radius: 40,
                      ),
                      title: Text(item.brand),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(item.description)),
                          Text(item.price.toString()),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
