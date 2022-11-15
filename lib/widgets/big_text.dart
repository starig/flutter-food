// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:flutter_food/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String value;
  double size;
  TextOverflow overFlow;

  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    this.size = 0,
    required this.value,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size == 0 ? Dimensions.font20: size,
        fontWeight: FontWeight.w400
      ),
    );
  }
}
