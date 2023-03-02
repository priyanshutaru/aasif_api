// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Lec02HomePage extends StatefulWidget {
  const Lec02HomePage({super.key});

  @override
  State<Lec02HomePage> createState() => _Lec02HomePageState();
}

class _Lec02HomePageState extends State<Lec02HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        title: Text("Asif Lec 02"),
      ),
    );
  }
}

/* 
 why,what,when,how,,all the question word ask to your self untill your confusion got
 clerd in your mind.
 right now my first priority is to learn the api impleamention in our flutter 
 app.....lets start the lecture and work...

 Server: server is power full computer where we store the data or personla information on server
 client: related data sotre on the server , user is also the clent 

 API: Application program interface, act like the middleware, it works between client and server
 it is alo like the medium and perform the crud action in our data
 c:creat
 r: read
 u:update
 d: delete

 creat: we can post or update in data
 read : get or fetch the data
 delete: it perform the delete operation and delete the data form the server
 update : it is update the data

 Rest Api: The representational state transfer(REST): this is the most papular approch to builds api
  this is the arciteture in which we can talk between client and server.

  http Method for the restful Sevices

  Get : in this we know that some data already on server and we just fetch it in our 
  app and use it.
  Post: Here the the data is already on server and we send the information throw the client 
  and save it to our database.
  Update: here we do the updation or you can say that some small changes in our data which 
  is stay at the database
  Put: 
  Delete: In this method we delete the data from the server and make changes in our data by the client.

   
    
     
      
       
        
         
          
    we request to sever and then sever show us the result according to the our request.
    we make the rquest using http in our flutter app.
    we get the value from the sever.


    //how we can develope the api//

    Node.js//javascript framework using the mangodb
    Laravel//php framework



    // this is the single line comments in dart
    /**/ this is multi line comment in the dart 
    when we give the three slace than it converted to dacumentation comment in the
    dart...................

    In dart we have 61 keywords.
    list is in sqaure bracket although maps is in curly brackets so when fetch the api than
    keep this in mind when we have to use list and when we have to use the map.don't be
    confused.


    


  */
