import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;

  const TitleSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text(
      this.title,
      style: new TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.pinkAccent
      )
    );

  }

}