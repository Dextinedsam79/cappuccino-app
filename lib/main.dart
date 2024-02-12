import 'package:capuccino_app/components/headersection.dart';
import 'package:capuccino_app/components/paragraph.dart';
import 'package:capuccino_app/components/ratingsection.dart';
import 'package:capuccino_app/components/sizeselector.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeaderSection(),
                 SizedBox(height: 10),
                  Container(
                    
                    child: Image.asset(
                      "assets/Rectangle.jpg",
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 160.0),
                        child: Text(
                          "Cappucino",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 160.0),
                        child: Text(
                          "with Chocolate",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                 RatingSection(),
                 Divider(
                    color: Colors.grey[200], // Light grey color
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Paragraph(),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  SizeSelector(),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
