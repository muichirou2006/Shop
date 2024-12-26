import 'package:flutter/material.dart';
import 'package:shop/constan.dart';
import 'package:shop/pages/Detail/Widget/addto_cart.dart';
import 'package:shop/pages/Detail/Widget/description.dart';
import 'package:shop/pages/Detail/detail_app_bar.dart';
import 'package:shop/pages/Detail/detail_image_slider.dart';
import 'package:shop/pages/Detail/iteam_detail.dart';
import 'package:shop/pages/home/Widget/myproduct.dart';

class DetailScreen extends StatefulWidget {
  final MyProducts products;
  const DetailScreen({super.key, required this.products});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColors = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: AddtoCart(products: widget.products),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(products: widget.products),
              const SizedBox(height: 20),
              MyDetailImageSlider(
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                images: widget.products.image,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  8,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index
                          ? Colors.black
                          : Colors.grey[300],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IteamDetail(products: widget.products),
                    const SizedBox(height: 20),
                    const Text(
                      "Color",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: List.generate(
                        widget.products.color.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColors = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            width: 40,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColors == index
                                  ? Colors.white
                                  : widget.products.color[index],
                              border: currentColors == index
                                  ? Border.all(
                                      color: widget.products.color[index],
                                    )
                                  : null,
                            ),
                            padding: currentColors == index
                                ? const EdgeInsets.all(2.0)
                                : null,
                            margin: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: widget.products.color[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    MyDescription(description: widget.products.description)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
