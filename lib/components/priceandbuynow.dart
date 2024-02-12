import 'package:flutter/material.dart';

class PriceAndBuyNow extends StatelessWidget {
  const PriceAndBuyNow({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Thank you for your patronage',
              style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.deepOrange.withOpacity(0.8);
            }
            return Color.fromARGB(218, 144, 65, 36);
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Text(
          'Buy Now',
          style:
              TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Sora'),
        ),
      ),
    );
  }
}