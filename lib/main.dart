import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Card',
      theme: ThemeData(
          primaryColor: Colors.blue.shade300,
          accentColor: Colors.pink.shade200,
          canvasColor: Colors.blue.shade300),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(
                    'https://avatars2.githubusercontent.com/u/22074472?s=460&v=4'),
              ),
              Text(
                'Sachin Rao',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'SENIOR SOFTWARE ENGINEER\n(MOBILITY)',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 2.5,
                    color: Colors.indigo.shade400,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.pink.shade200,
                  ),
                  title: Text(
                    '+01234567890',
                    style: TextStyle(
                        color: Colors.indigo.shade400,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pink.shade200,
                  ),
                  title: Text(
                    'sachinrao@email.com',
                    style: TextStyle(
                        color: Colors.indigo.shade400,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
