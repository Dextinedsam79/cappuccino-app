import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          child: // appBar: AppBar(
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset('assets/arrow-left.jpg'), // First image
            const Text(
              'Details',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.bold),
            ), 
            Image.asset('assets/Heart.jpg'), //another comment Second image
          ]),
        )));
  }
}
