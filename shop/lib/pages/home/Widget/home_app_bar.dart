import 'package:flutter/material.dart';
import 'package:shop/constan.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          icon: const Icon(Icons.grid_view_outlined),
          iconSize: 20,
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 20,
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
