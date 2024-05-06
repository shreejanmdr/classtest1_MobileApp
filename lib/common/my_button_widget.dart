import 'package:flutter/material.dart';

class MyButtonWidget extends StatefulWidget {
  final String text;
  const MyButtonWidget({super.key, required this.text});
  @override
  _MyButtonWidgetState createState() => _MyButtonWidgetState();
}

class _MyButtonWidgetState extends State<MyButtonWidget> {
  bool isVisible = true;
  bool isFirstClick = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (isFirstClick) {
              // Change color on first click
              isFirstClick = false;
            } else {
              // Disappear on second click
              isVisible = false;
            }
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isFirstClick
                ? Colors.red
                : Colors.green, // Change color on first click
          ),
        ),
        child: Text(widget.text),
      ),
    );
  }
}
