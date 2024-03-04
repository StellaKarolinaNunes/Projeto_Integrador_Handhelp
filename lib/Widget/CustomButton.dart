import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 159,
        height: 153,
        decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
        child: Stack(
          children: [
            Positioned(
              left: 46.90,
              top: 127.44,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Averia Sans Libre',
                  fontWeight: FontWeight.w400,
                  height: 0.05,
                  letterSpacing: -0.40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
          