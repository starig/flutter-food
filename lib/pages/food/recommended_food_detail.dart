// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widgets/app_icon.dart';
import 'package:flutter_food/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius15),
                    topLeft: Radius.circular(Dimensions.radius15),
                  ),
                  color: Colors.white,
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    top: Dimensions.height10 / 2, bottom: Dimensions.height10),
                child: Center(
                    child: BigText(
                  value: 'Chinese Side',
                  size: Dimensions.font26,
                )),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food1.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
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
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit. Integer nec odio. Praesent'
                          ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                          ' quis sem at nibh elementum imperdiet. Duis sagittis '
                          'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                          ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                          'eget nulla. Class aptent taciti sociosqu ad litora '
                          'torquent per conubia nostra, per inceptos himenaeos.'
                          ' Curabitur sodales ligula in libero. Sed dignissim '
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit. Integer nec odio. Praesent'
                          ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                          ' quis sem at nibh elementum imperdiet. Duis sagittis '
                          'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                          ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                          'eget nulla. Class aptent taciti sociosqu ad litora '
                          'torquent per conubia nostra, per inceptos himenaeos.'
                          ' Curabitur sodales ligula in libero. Sed dignissim '
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit. Integer nec odio. Praesent'
                          ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                          ' quis sem at nibh elementum imperdiet. Duis sagittis '
                          'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                          ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                          'eget nulla. Class aptent taciti sociosqu ad litora '
                          'torquent per conubia nostra, per inceptos himenaeos.'
                          ' Curabitur sodales ligula in libero. Sed dignissim '
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit. Integer nec odio. Praesent'
                          ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                          ' quis sem at nibh elementum imperdiet. Duis sagittis '
                          'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                          ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                          'eget nulla. Class aptent taciti sociosqu ad litora '
                          'torquent per conubia nostra, per inceptos himenaeos.'
                          ' Curabitur sodales ligula in libero. Sed dignissim '
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit. Integer nec odio. Praesent'
                          ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                          ' quis sem at nibh elementum imperdiet. Duis sagittis '
                          'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                          ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                          'eget nulla. Class aptent taciti sociosqu ad litora '
                          'torquent per conubia nostra, per inceptos himenaeos.'
                          ' Curabitur sodales ligula in libero. Sed dignissim '
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit. Integer nec odio. Praesent'
                          ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                          ' quis sem at nibh elementum imperdiet. Duis sagittis '
                          'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                          ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                          'eget nulla. Class aptent taciti sociosqu ad litora '
                          'torquent per conubia nostra, per inceptos himenaeos.'
                          ' Curabitur sodales ligula in libero. Sed dignissim '
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit. Integer nec odio. Praesent'
                          ' libero. Sed cursus ante dapibus diam. Sed nisi. Nulla'
                          ' quis sem at nibh elementum imperdiet. Duis sagittis '
                          'ipsum. Praesent mauris. Fusce nec tellus sed augue'
                          ' semper porta. Mauris massa. Vestibulum lacinia arcu '
                          'eget nulla. Class aptent taciti sociosqu ad litora '
                          'torquent per conubia nostra, per inceptos himenaeos.'
                          ' Curabitur sodales ligula in libero. Sed dignissim '
                          'lacinia nunc. Curabitur tortor.'
                          'Lorem ipsum dolor sit amet,'
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
                    padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height15,
                    ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(
                  value: '\$12.88 X 0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
          )
        ],
      ),
    );
  }
}
