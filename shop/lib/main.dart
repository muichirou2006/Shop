import 'package:flutter/material.dart';
import 'package:shop/Provider/cart_provider.dart';
import 'package:shop/Provider/favorite_provider.dart';
import 'package:shop/Provider/provider_search.dart';
import 'package:shop/pages/nav_bar_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => CartProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => FavoriteProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => ProviderSearch(),
            )
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: NavBarScreen(),
          ));
}
