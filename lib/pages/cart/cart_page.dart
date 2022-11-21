// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_food/controllers/cart_controller.dart';
import 'package:flutter_food/utils/app_constants.dart';
import 'package:flutter_food/utils/colors.dart';
import 'package:flutter_food/utils/dimensions.dart';
import 'package:flutter_food/widgets/app_icon.dart';
import 'package:flutter_food/widgets/big_text.dart';
import 'package:flutter_food/widgets/small_text.dart';
import 'package:get/get.dart';

import '../../routes/route_helper.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimensions.height20 * 3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: AppIcon(
                      icon: Icons.arrow_back_ios_new,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize16,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width20 * 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.getInitial());
                    },
                    child: AppIcon(
                      icon: Icons.home_outlined,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize16,
                    ),
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_outlined,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize16,
                  ),
                ],
              )),
          Positioned(
            top: Dimensions.height20 * 5,
            left: Dimensions.width20,
            right: Dimensions.width20,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height15),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GetBuilder<CartController>(
                  builder: (cartController) {
                    return ListView.builder(
                      itemCount: cartController.getItems.length,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: Dimensions.height15),
                          height: 100,
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Container(
                                width: Dimensions.width20 * 5,
                                height: Dimensions.height20 * 5,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(AppConstants
                                              .BASE_URL +
                                          AppConstants.UPLOAD_URI +
                                          cartController.getItems[index].img!),
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: Dimensions.width10,
                              ),
                              Expanded(
                                child: Container(
                                  height: Dimensions.height20 * 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      BigText(
                                        value: cartController
                                            .getItems[index].name!,
                                        color: AppColors.mainBlackColor,
                                      ),
                                      SmallText(value: 'Spicy'),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BigText(
                                            value:
                                                '${cartController.getItems[index].price}\$',
                                            color: Colors.redAccent,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimensions.radius20),
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
                                                GestureDetector(
                                                  onTap: () {
                                                    //popularProduct.setQuantity(false);
                                                  },
                                                  child: Icon(Icons.remove,
                                                      color:
                                                          AppColors.signColor),
                                                ),
                                                SizedBox(
                                                  width: Dimensions.width10 / 2,
                                                ),
                                                BigText(value: '0'),
                                                SizedBox(
                                                  width: Dimensions.width10 / 2,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    //popularProduct.setQuantity(true);
                                                  },
                                                  child: Icon(Icons.add,
                                                      color:
                                                          AppColors.signColor),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
