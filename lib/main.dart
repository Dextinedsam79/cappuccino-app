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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/arrow-left.jpg',
                        height: 50,
                      ),
                      Text(
                        'Detail',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(
                        'assets/Heart.jpg',
                        height: 50,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.15),
                    child: Image.asset(
                      "assets/Rectangle.jpg",
                      scale: 0.87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.15),
                    child: Column(
                      children: [
                        Text(
                          "Cappucino",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "with Chocolate",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 8.0),
                          Text(
                            '4.8',
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '(230)',
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/bean.jpg',
                            height: 50,
                          ),
                          SizedBox(width: 8.0),
                          Image.asset(
                            'assets/milk.jpg',
                            height: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300], // Light grey color
                  ),
                  Row(
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
