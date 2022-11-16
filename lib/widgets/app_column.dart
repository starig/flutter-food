// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import 'package:flutter_food/widgets/small_text.dart';import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String productName;
  final int stars;
  final int price;
  const AppColumn({Key? key, required this.productName, required this.stars, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(value: productName, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                stars,
                    (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            Wrap(
              children: List.generate(
                5 - stars,
                    (index) => Icon(
                  Icons.star,
                  color: AppColors.paraColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(width: Dimensions.height10),
            SmallText(value: stars.toString()),
            SizedBox(width: Dimensions.height10),
            SmallText(value: '1287 comments')
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.price_check,
                text: '${price.toString()} \$',
                iconColor: Colors.lightGreen),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7km',
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_outlined,
                text: '32min',
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
