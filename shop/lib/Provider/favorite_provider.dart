import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/pages/home/Widget/myproduct.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<MyProducts> _favvorite = [];
  List<MyProducts> get favorite => _favvorite;
  void toggleFav(MyProducts products) {
    if (_favvorite.contains(products)) {
      _favvorite.remove(products);
    } else {
      _favvorite.add(products);
    }
    notifyListeners();
  }

  bool isExit(MyProducts products) {
    final isExit = _favvorite.contains(products);
    return isExit;
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
