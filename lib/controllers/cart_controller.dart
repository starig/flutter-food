import 'package:flutter/material.dart';
import 'package:flutter_food/data/repository/cart_repo.dart';
import 'package:flutter_food/models/products_model.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';
import '../utils/colors.dart';

class CartController extends GetxController {
  final CartRepo cart;

  CartController({required this.cart});

  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductsModel product, int quantity) {
    var totalQuantity = 0;
    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {
        totalQuantity = value.quantity! + quantity;

        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          img: value.img,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
          product: product
        );
      });


      if (totalQuantity <= 0) {
        _items.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(product.id!, () {
          return CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            img: product.img,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),
              product: product
          );
        });
      } else {
        Get.snackbar(
            'Cart',
            'You can`t add 0 items to cart',
            backgroundColor: Colors.redAccent,
            colorText: AppColors.textColor
        );
      }
    }
    update();
  }

  bool existInCart(ProductsModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    } else {
      return false;
    }
  }

  getQuantity(ProductsModel product) {
    var quantity = 0;
    if(_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if(key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItems {
    var totalQuantity = 0;
    _items.forEach((key, value) {
      totalQuantity += value.quantity!;
    });
    return totalQuantity;
  }

  List<CartModel> get getItems {
    return _items.entries.map((e) {
      return e.value;
    }).toList();
  }

  int get totalAmount {
    var total=0;
    _items.forEach((key, value) {
      total += value.price! * value.quantity!;
    });

    return total;
  }
}
