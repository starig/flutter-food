// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String value;
  double size;
  double height;

  SmallText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    this.height = 1.2,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
          color: color,
          height: height,
          fontFamily: 'Roboto',
          fontSize: size,
      ),
    );

  }
}
