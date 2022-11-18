import 'package:flutter_food/controllers/popular_product_controller.dart';
import 'package:flutter_food/data/api/api_client.dart';
import 'package:flutter_food/data/repository/cart_repo.dart';
import 'package:flutter_food/data/repository/popular_product_repo.dart';
import 'package:flutter_food/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../controllers/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future <void> init() async {
  //api clients
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cart: Get.find()));

}