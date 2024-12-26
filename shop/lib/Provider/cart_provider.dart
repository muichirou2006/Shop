import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/pages/home/Widget/myproduct.dart';

class CartProvider extends ChangeNotifier {
  final List<MyProducts> _cart = [];
  List<MyProducts> get cart => _cart;
  void toggleFav(MyProducts products) {
    if (_cart.contains(products)) {
      for (MyProducts element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(products);
    }
    notifyListeners();
  }

  double totalPrice() {
    double total1 = 0.0;
    for (MyProducts element in _cart) {
      total1 += element.price * element.quantity;
    }
    return total1;
  }

  incrementQty(int index) => _cart[index].quantity++;
  decrementQty(int index) => _cart[index].quantity--;

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}
