 import 'package:flutter/material.dart';
 class Hello extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
 }