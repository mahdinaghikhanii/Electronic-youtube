import 'package:flutter/material.dart';

import '../../../model/product_model.dart';
import '../../product/product.dart';

class HomePageTopDealsOnElectronicsWidget extends StatelessWidget {
  const HomePageTopDealsOnElectronicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60, top: 16),
      width: MediaQuery.sizeOf(context).width,
      height: 600,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productsData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10,
              childAspectRatio: 0.67),
          itemBuilder: (context, index) {
            return ProductItem(product: productsData[index]);
          }),
    );
  }
}

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProductPage()));
          },
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          )
                        ])),
                Image.asset(
                  product.imageUrl,
                  fit: BoxFit.contain,
                  height: 140,
                ),
                const SizedBox(height: 8),
                Text(
                  product.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                ),
                Row(children: [
                  Text(product.price,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 14)),
                  const SizedBox(width: 4),
                  Text(product.price,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 8,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey)),
                  const SizedBox(width: 3),
                  Text(product.discount,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 12, color: Colors.green))
                ]),
                const SizedBox(height: 3),
                Row(children: [
                  Image.asset(
                    "assets/affer.png",
                    width: 12,
                    height: 12,
                  ),
                  const SizedBox(width: 2),
                  const Text("Exchange Offer & more ",
                      overflow: TextOverflow.clip)
                ]),
              ]),
        ));
  }
}
