import 'package:flutter/material.dart';

import 'widget/categories_list.dart';
import 'widget/more_button.dart';
import 'widget/search_box.dart';
import 'widget/slider.dart';
import 'widget/top_deals_on_electronis.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(children: [
            Image.asset("assets/logo.png", width: 130, height: 26),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/notofication.png")),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/more.png"),
              padding: EdgeInsets.zero,
            )
          ]),
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SearchBoxHomePageWidget(),
          const SliderWidget(),
          MoreButtonWidgets(title: "Categories", ontap: () {}),
          const HomeCategoriesListWidgets(),
          MoreButtonWidgets(title: "Top Deals On Electronics", ontap: () {}),
          HomePageTopDealsOnElectronicsWidget()
        ]),
      ),
    );
  }
}
