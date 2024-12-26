import 'package:flutter/material.dart';
import 'package:shop/Provider/favorite_provider.dart';
import 'package:shop/pages/home/Widget/myproduct.dart';

class DetailAppBar extends StatelessWidget {
  final MyProducts products;
  const DetailAppBar({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            iconSize: 20,
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {},
            iconSize: 20,
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {
              provider.toggleFav(products);
            },
            iconSize: 20,
            icon: Icon(
              provider.isExit(products)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
