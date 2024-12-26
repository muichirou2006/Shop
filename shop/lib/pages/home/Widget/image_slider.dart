import 'dart:async';
import 'package:flutter/material.dart';

class MyImageSlider extends StatefulWidget {
  final Function(int) onChange;
  final int currentSlider;

  const MyImageSlider({
    super.key,
    required this.onChange,
    required this.currentSlider,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MyImageSliderState createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      int nextPage = (_pageController.page!.toInt() + 1) % 6;
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              //controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: widget.onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "assets/discount.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/slider.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/slider2.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/slider1.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/mac.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/slider3.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: widget.currentSlider == index ? 15 : 8,
                height: 8,
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.currentSlider == index
                      ? Colors.black
                      : Colors.grey[300],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
