import 'package:flutter/material.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,
                              color: Color.fromARGB(255, 245, 232, 55),
                              size: 30),
                          SizedBox(width: 4.0),
                          Text(
                            '4.8',
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 15.0,
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
                  );
  }
}
