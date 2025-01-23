import 'package:flutter/material.dart';

class ScrollingTextButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle? textStyle;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double elevation;
  final double maxWidthValue;

  const ScrollingTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
    this.textStyle,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
    this.elevation = 2.0,
    this.maxWidthValue = 150,
  });

  @override
  State<ScrollingTextButton> createState() => _ScrollingTextButtonState();
}

class _ScrollingTextButtonState extends State<ScrollingTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: widget.maxWidthValue
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.color,
          elevation: widget.elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          padding: widget.padding,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            widget.label,
            style: widget.textStyle ??
                const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
