import 'package:flutter/material.dart';

class SearchBoxHomePageWidget extends StatelessWidget {
  const SearchBoxHomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.26),
              spreadRadius: 8,
              blurRadius: 10,
              offset: const Offset(0, 2))
        ]),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
        height: 50,
        child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Try Search here....")));
  }
}
