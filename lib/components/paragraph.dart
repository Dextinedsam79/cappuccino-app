import 'dart:math';

import 'package:flutter/material.dart';

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
            fontFamily: 'Sora',
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

