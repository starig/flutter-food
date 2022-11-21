// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/popular_product_controller.dart';
import '../routes/route_helper.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'app_icon.dart';
import 'big_text.dart';

class CartButton extends StatefulWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PopularProductController>(builder: (controller) {
      return GestureDetector(
        onTap: () {
          Get.toNamed(RouteHelper.getCart());
        },
        child: Stack(
          children: [
            AppIcon(icon: Icons.shopping_cart_outlined),
            Get.find<PopularProductController>().totalItems >= 1
                ? Positioned(
              right: 0,
              top: 0,
              child: AppIcon(
                icon: Icons.circle,
                size: 20,
                iconColor: Colors.transparent,
                backgroundColor: AppColors.mainColor,
              ),
            )
                : Container(),
            Get.find<PopularProductController>().totalItems >= 1
                ? Positioned(
              right: (Dimensions.width10 / 2),
              top: (Dimensions.height10 / 5),
              child: BigText(
                value: Get.find<PopularProductController>()
                    .totalItems
                    .toString(),
                color: Colors.white,
                size: 14,
              ),
            )
                : Container(),
          ],
        ),
      );
    });
  }
}
