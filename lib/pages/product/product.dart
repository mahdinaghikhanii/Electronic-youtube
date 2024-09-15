import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    final List<String> productImage = [
      "assets/mac1.png",
      "assets/mac2.png",
      "assets/Apple-MacBook-Pro-16-inch-2 1.png"
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 65,
          child: Row(children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.grey.withOpacity(0.3)),
                    right: BorderSide(color: Colors.grey.withOpacity(0.3))),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Icon(Icons.share, size: 20),
                const SizedBox(width: 6),
                Text("Share",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 16))
              ]),
              height: 65,
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.grey.withOpacity(0.3)),
              )),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Icon(Icons.add, size: 20),
                const SizedBox(width: 6),
                Text("Add to compare",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 16))
              ]),
              height: 65,
            ))
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leadingWidth: 0,
          titleSpacing: 0,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: Image.asset('assets/search.png')),
              IconButton(onPressed: () {}, icon: Image.asset('assets/cart.png'))
            ]),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30, top: 20),
              width: MediaQuery.sizeOf(context).width,
              height: 250,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: productImage.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      productImage[index],
                      fit: BoxFit.contain,
                    );
                  }),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: productImage.length,
                effect: const WormEffect(
                    dotWidth: 16, dotHeight: 7, activeDotColor: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 8),
                    child: Text(
                      "Apple MacBook Pro Core i9 9th Gen(16 GB/1TB SSD/Mac OS Catalina/4 GB graphic)",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 18),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Text("See More",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 14)),
                  const SizedBox(height: 14),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 8),
                              Text(
                                "4.2",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 14,
                              )
                            ])),
                    const Text(
                      "90 Ratings",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "₹2,24,900",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w900, fontSize: 24),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.6),
                              shape: BoxShape.circle),
                          width: 25,
                          height: 25,
                          child: const Icon(Icons.favorite_outline, size: 17),
                        ),
                      ])
                ],
              ),
            ),
            const SizedBox(height: 4),
            Divider(
              thickness: 2,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Avavible offers",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w900, fontSize: 15),
                  ),
                  const SizedBox(height: 15),
                  avavibleOffersText(
                      "5% Unlimited Cashback on Flipkart Axis Bank Credit Card "),
                  avavibleOffersText(
                      "Flat X30 discount on first prepaid transaction using RuPay debit card, minimum order value"),
                  avavibleOffersText(
                      "₹30 Off on first prepaid transaction using UPI. Minimum order value 750/- "),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 20),
                    child: Text("+5 more",
                        style: TextStyle(fontWeight: FontWeight.w900)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.8), width: 1)),
                        width: 100,
                        height: 50,
                        child: Center(
                            child: Text(
                          "FREE Delivery",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black, fontSize: 11),
                        )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.8), width: 1)),
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Text(
                            "No cost EMI\n₹22,212/ month.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.black, fontSize: 11),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.8), width: 1)),
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Product\nExchange",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.black, fontSize: 11),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
          ]),
        ));
  }
}

Widget avavibleOffersText(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(children: [
      Image.asset(
        'assets/affer.png',
        width: 18,
        height: 18,
      ),
      const SizedBox(width: 15),
      Expanded(
          child: Text(
        text,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ))
    ]),
  );
}
