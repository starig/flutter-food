import 'package:flutter_food/models/products_model.dart';

class CartModel {
  int? id;
  String? name;
  int? price;
  String? img;
  int? quantity;
  bool? isExist;
  String? time;
  ProductsModel? product;

  CartModel({
    this.id,
    this.name,
    this.price,
    this.img,
    this.isExist,
    this.time,
    this.quantity,
    this.product
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    img = json['img'];
    quantity = json['quantity'];
    isExist = json['isExist'];
    time = json['time'];
    product = ProductsModel.fromJson(json['product']);
  }

}