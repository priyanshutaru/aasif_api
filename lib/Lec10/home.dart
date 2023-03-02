// ignore_for_file: prefer_const_constructors

import 'package:aasif_api/Lec10/api_services.dart';
import 'package:aasif_api/Lec10/model.dart';
import 'package:flutter/material.dart';

class MyUserList extends StatefulWidget {
  const MyUserList({super.key});

  @override
  State<MyUserList> createState() => _MyUserListState();
}

class _MyUserListState extends State<MyUserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Requires Api"),
      ),
      body: FutureBuilder(
          future: getDetails(),
          builder: (context, AsyncSnapshot shnaapshot) {
            if (!shnaapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Datum> useritems = shnaapshot.data;
              return ListView.builder(
                  itemCount: useritems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = useritems[index];
                    return Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Row(
                                children: [
                                  Text("First Name"),
                                  Text(item.firstName),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Last Name"),
                                  Text(item.lastName),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("id"),
                                  Text(
                                    item.id.toString(),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("id Email "),
                                  Text(item.email),
                                ],
                              ),
                              Image.network(item.avatar),
                            ],
                          ),
                        )
                      ],
                    );
                  });
            }
          }),
    );
  }
}
