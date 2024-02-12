import 'package:capuccino_app/components/priceandbuynow.dart';
import 'package:capuccino_app/components/sizebutton.dart';
import 'package:flutter/material.dart';


class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = 'M'; // Default selected size
  Map<String, double> sizePrices = {
    'S': 3.99,
    'M': 4.53,
    'L': 5.99,
  }; // Map to store prices for each size

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sora',
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizeButton(
                text: 'S',
                isSelected: selectedSize == 'S',
                onPressed: () => _setSize('S')),
            SizedBox(width: 20),
            SizeButton(
                text: 'M',
                isSelected: selectedSize == 'M',
                onPressed: () => _setSize('M')),
            SizedBox(width: 20),
            SizeButton(
                text: 'L',
                isSelected: selectedSize == 'L',
                onPressed: () => _setSize('L')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 16, fontFamily: 'Sora'),
                ),
                SizedBox(height: 5),
                Text(
                  '\$ ${sizePrices[selectedSize]!.toStringAsFixed(2)}', // Show price based on selected size
                  style: TextStyle(
                    color: const Color.fromARGB(218, 144, 65, 36),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            PriceAndBuyNow(), 
          ],
        ),
      ],
    );
  }

  void _setSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }
}
