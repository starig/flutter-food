// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_food/controllers/popular_product_controller.dart';
import 'package:flutter_food/pages/home/main_food_page.dart';
import 'package:flutter_food/routes/route_helper.dart';
import 'package:get/get.dart';

import 'controllers/recommended_product_controller.dart';
import 'helper/dependensies.dart' as dep;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
