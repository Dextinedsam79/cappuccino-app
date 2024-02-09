import 'package:flutter/material.dart';
import 'dart:math';

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
                  child: Image.asset("assets/Rectangle.jpg",
                      height: 200, width: double.infinity),
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
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Paragraph(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizeSelector(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Paragraph extends StatefulWidget {
  @override
  _ParagraphState createState() => _ParagraphState();
}

class _ParagraphState extends State<Paragraph> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildParagraph(50),
        SizedBox(height: 10),
        _buildReadMore(),
      ],
    );
  }

  Widget _buildParagraph(int numberOfWords) {
    String paragraph = _generateParagraph(numberOfWords);
    return Text(
      paragraph,
      maxLines: isExpanded ? null : 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16.0, fontFamily: 'Sora'),
    );
  }

  String _generateParagraph(int numberOfWords) {
    final random = Random();
    List<String> words = List.generate(numberOfWords,
        (_) => _sentenceList[random.nextInt(_sentenceList.length)]);
    String paragraph = words.join(' ');
    paragraph =
        paragraph.substring(0, 1).toUpperCase() + paragraph.substring(1);
    paragraph += '.';
    return paragraph;
  }

  Widget _buildReadMore() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.orange[50],
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          isExpanded ? 'Read Less' : 'Read More',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 2.0,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> _sentenceList = [
    'A cappuccino is an approximately 150 ml (5 oz) beverage,',
    'with 25 ml of espresso coffee and 85 ml of fresh thick milk foam on top',
    'the former follows the traditional idea of the cappuccino being',
    'prepared by 0.3 expresso, 0.3 steamed milk and 0.3 milk foam.',
  ];
}

class SizeSelector extends StatefulWidget {
  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = 'M';

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
      ],
    );
  }

  void _setSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }
}

class SizeButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const SizeButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  _SizeButtonState createState() => _SizeButtonState();
}

class _SizeButtonState extends State<SizeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.orange[50] : Colors.white,
          border: Border.all(
              color: widget.isSelected ? Colors.orange : Colors.grey),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.isSelected ? Colors.orange : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        
      ),
    );
  }
}

