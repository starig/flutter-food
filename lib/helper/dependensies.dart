import 'package:flutter_food/controllers/popular_product_controller.dart';
import 'package:flutter_food/data/api/api_client.dart';
import 'package:flutter_food/data/repository/popular_product_repo.dart';
import 'package:flutter_food/utils/app_constants.dart';
import 'package:get/get.dart';

Future <void> init() async {
  //api clients
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}