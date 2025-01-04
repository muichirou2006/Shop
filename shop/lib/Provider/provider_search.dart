import 'package:flutter/material.dart';
import 'package:shop/pages/home/Widget/myproduct.dart';

class ProviderSearch with ChangeNotifier {
  final List<MyProducts> _products = [];
  List<MyProducts> _foundProducts = [];

  List<MyProducts> get products => _products;
  List<MyProducts> get foundProducts => _foundProducts;

  void runFilter(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      _foundProducts = List.from(_products);
    } else {
      _foundProducts = _products.where((product) {
        final titleMatch =
            product.title.toLowerCase().contains(enteredKeyword.toLowerCase());
        final descriptionMatch = product.description
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase());
        final categoryMatch = product.category
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase());
        final sellerMatch =
            product.seller.toLowerCase().contains(enteredKeyword.toLowerCase());
        return titleMatch || descriptionMatch || categoryMatch || sellerMatch;
      }).toList();
    }
    notifyListeners();
  }
}
