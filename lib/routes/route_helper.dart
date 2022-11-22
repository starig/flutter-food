import 'package:flutter_food/pages/cart/cart_page.dart';
import 'package:flutter_food/pages/food/popular_food_detail.dart';
import 'package:flutter_food/pages/food/recommended_food_detail.dart';
import 'package:flutter_food/pages/home/home_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';
  static const String cart = '/cart';

  static String getInitial () => '$initial';
  static String getPopularFood (int pageId, String page) => '$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood (int pageId, String page) => '$recommendedFood?pageId=$pageId&page=$page';
  static String getCart () => '$cart';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomePage()),
    GetPage(name: cart, page: () => CartPage(), transition: Transition.fadeIn),
    GetPage(name: recommendedFood, page: (){
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters['page'];
      return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
    }),
    GetPage(name: popularFood, page: () {
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters['page'];
      return PopularFoodDetail(pageId: int.parse(pageId!), page: page!);
    }),
  ];
}