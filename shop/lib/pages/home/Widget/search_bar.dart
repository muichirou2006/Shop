import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Provider/provider_search.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    final providerSearch = Provider.of<ProviderSearch>(context);
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search....',
                border: InputBorder.none,
              ),
              onChanged: (value) => providerSearch.runFilter(value),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
