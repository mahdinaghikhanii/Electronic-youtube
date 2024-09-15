import 'package:flutter/material.dart';

class HomeCategoriesListWidgets extends StatelessWidget {
  const HomeCategoriesListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoriesImagedata = [
      "assets/ca1.png",
      "assets/ca2.png",
      "assets/ca3.png",
      "assets/ca4.png",
      "assets/5.png"
    ];
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 18),
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 15),
          itemCount: categoriesImagedata.length,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.only(right: 20),
                child: Image.asset(categoriesImagedata[index]));
          }),
    );
  }
}
