import 'package:flutter/material.dart';

class MyDetailImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String images;
  const MyDetailImageSlider({
    super.key,
    required this.onChange,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(
            tag: images,
            child: Image.asset(images),
          );
        },
      ),
    );
  }
}
