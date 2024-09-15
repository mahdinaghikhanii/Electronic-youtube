class ProductModel {
  final String name;
  final String imageUrl;
  final String price;
  final String discount;

  ProductModel(this.name, this.imageUrl, this.price, this.discount);
}

List<ProductModel> productsData = [
  ProductModel('Apple MacBook Pro Core i9 9th Gen',
      'assets/Apple-MacBook-Pro-16-inch-2 1.png', '₹2,24,900', '6% off'),
  ProductModel('JBL T450BT Extra Bass Bluetooth Headset', 'assets/canon.png',
      '₹2,799', '20% off'),
  ProductModel('Canon EOS 90D DSLR Camera', 'assets/headset.png', '₹1,13,990',
      '10% off'),
  ProductModel('Samsung Galaxy M11 (Black, 32 GB)', 'assets/phone.png',
      '₹11,270', '15% off'),
];
