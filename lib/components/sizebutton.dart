import 'package:flutter/material.dart';

class _SizeButtonState extends State<SizeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.orange[50] : Colors.white,
          border: Border.all(
            color: widget.isSelected ? Colors.orange : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 8),
          child: Text(
            widget.text,
            style: TextStyle(
                color: widget.isSelected
                    ? const Color.fromARGB(218, 144, 65, 36)
                    : Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sora'),
          ),
        ),
      ),
    );
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


