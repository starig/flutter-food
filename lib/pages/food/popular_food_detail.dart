// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widgets/app_column.dart';
import 'package:flutter_food/widgets/app_icon.dart';
import 'package:flutter_food/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background img
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/food1.jpg'))),
            ),
          ),
          // Header Icons
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios_new),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - Dimensions.height20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: 'Chinese Side',
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(value: 'Introduce'),
                  SizedBox(height: Dimensions.height20,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text: 'Lorem ipsum dolor sit amet,'
                              ' consectetur adipiscing elit. Integer nec odio. Praesent'
                              ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                              ' quis sem at nibh elementum imperdiet. Duis sagittis '
                              'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                              ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                              'eget nulla. Class aptent taciti sociosqu ad litora '
                              'torquent per conubia nostra, per inceptos himenaeos.'
                              ' Curabitur sodales ligula in libero. Sed dignissim '
                              'lacinia nunc. Curabitur tortor.''Lorem ipsum dolor sit amet,'
                              ' consectetur adipiscing elit. Integer nec odio. Praesent'
                              ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                              ' quis sem at nibh elementum imperdiet. Duis sagittis '
                              'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                              ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                              'eget nulla. Class aptent taciti sociosqu ad litora '
                              'torquent per conubia nostra, per inceptos himenaeos.'
                              ' Curabitur sodales ligula in libero. Sed dignissim '
                              'lacinia nunc. Curabitur tortor.''Lorem ipsum dolor sit amet,'
                              ' consectetur adipiscing elit. Integer nec odio. Praesent'
                              ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                              ' quis sem at nibh elementum imperdiet. Duis sagittis '
                              'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                              ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                              'eget nulla. Class aptent taciti sociosqu ad litora '
                              'torquent per conubia nostra, per inceptos himenaeos.'
                              ' Curabitur sodales ligula in libero. Sed dignissim '
                              'lacinia nunc. Curabitur tortor.',

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.radius20 * 2),
            topLeft: Radius.circular(Dimensions.radius20 * 2),
          ),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(value: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: BigText(
                value: '\$10 | Add to Cart',
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
