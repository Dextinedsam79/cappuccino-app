import 'package:flutter/material.dart';


class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

