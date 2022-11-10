// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_food/home/food_page_body.dart';
import 'package:flutter_food/utils/colors.dart';
import 'package:flutter_food/widgets/big_text.dart';
import 'package:flutter_food/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                top: 45,
                bottom: 15,
              ),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        value: 'Canada',
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            value: 'Olso',
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          FoodPageBody()
        ],
      ),
    );
  }
}
