import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("44_AdityaSalkar-Exp06"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              child: Center(
                child: Text("I",
                  style: TextStyle(fontSize: 40),),
              ),
              color: Colors.orange,
            ),
            Container(
              child: Center(
                child: Text("Love",
                  style: TextStyle(fontSize: 40),),
              ),
              color: Colors.white,
            ),
            Container(
              child: Center(
                child: Text("India",
                  style: TextStyle(fontSize: 40),),
              ),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}