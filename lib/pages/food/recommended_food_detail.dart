// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_food/controllers/popular_product_controller.dart';
import 'package:flutter_food/controllers/recommended_product_controller.dart';
import 'package:flutter_food/routes/route_helper.dart';
import 'package:flutter_food/utils/app_constants.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widgets/app_icon.dart';
import 'package:flutter_food/widgets/cart_button.dart';
import 'package:flutter_food/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

import '../../controllers/cart_controller.dart';
import '../../utils/colors.dart';
import '../../widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  final int pageId;

  const RecommendedFoodDetail({Key? key, required this.pageId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    Get.find<PopularProductController>().initData(product, Get.find<CartController>());
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                //AppIcon(icon: Icons.shopping_cart_outlined),
                CartButton()
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
                  value: product.name,
                  size: Dimensions.font26,
                )),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstants.BASE_URL + AppConstants.UPLOAD_URI + product.img,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height15,
                    ),
                    child: ExpandableTextWidget(
                      text: product.description,
                    ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(builder: (controller) {
        return Column(
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
                  GestureDetector(
                    onTap: () {
                      controller.setQuantity(false);
                    },
                    child: AppIcon(
                      icon: Icons.remove,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize24,
                    ),
                  ),
                  BigText(
                    value: '\$${product.price} X ${controller.inCartItems}',
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font26,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.setQuantity(true);
                    },
                    child: AppIcon(
                      icon: Icons.add,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize24,
                    ),
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
                  GestureDetector(
                    onTap: () {
                      controller.addItem(product);
                    },
                    child: Container(
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
                        value: '\$${product.price * controller.inCartItems} | Add to Cart',
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },),
    );
  }
}
