import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('44_AdityaSalkar- EXP5'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Row Widget Roll no-44',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Box 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Box 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}