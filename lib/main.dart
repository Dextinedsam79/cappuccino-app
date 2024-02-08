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
                child: Column(children: [
          // appBar: AppBar(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/arrow-left.jpg'), // First image
                  const Text(
                    'Detail',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                      'assets/Heart.jpg'), //another comment Second image
                ]),
          ),
          Image.asset("assets/Rectangle.jpg"),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 155.0),
                child: Text("Cappucino",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 155.0),
                child: Text("with Chocolate",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.normal)),
              ),
            ],
          )
        ]))));
  }
}
