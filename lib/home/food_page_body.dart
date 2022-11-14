// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_food/utils/colors.dart';
import 'package:flutter_food/widgets/big_text.dart';
import 'package:flutter_food/widgets/icon_and_text_widget.dart';
import 'package:flutter_food/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(
    viewportFraction: 0.85,
  );
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Color(0xFF68c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/food0.png'))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 7),
                    spreadRadius: -8,
                    blurRadius: 14,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(value: 'Chinese side'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: AppColors.mainColor,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(value: '5.0'),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(value: '1287 comments')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconAndTextWidget(
                            icon: Icons.circle_rounded,
                            text: 'Normal',
                            iconColor: AppColors.iconColor1),
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
