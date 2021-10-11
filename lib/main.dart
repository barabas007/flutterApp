import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp( // Cupertino 
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("My first App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("This is my Homepage",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
           ),
         ),
       ),
     ),
    ),
  );
}



      // home: Center(
      //   child: Text(
      //     "Hello Flutter",
      //     style: TextStyle(fontSize: 30, color: Colors.red),
      //     textDirection: TextDirection.ltr,
      //   ),
      // ),