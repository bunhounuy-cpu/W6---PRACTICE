import 'package:flutter/material.dart';

// 1. Product Enum with attributes
enum Product {
  dart(
    title: 'Dart',
    description: 'The best object language',
    image: '../assets/ex3/dart.png',
  ),
  flutter(
    title: 'Flutter',
    description: 'The best mobile widget library',
    image: '../assets/ex3/flutter.png',
  ),
  firebase(
    title: 'Firebase',
    description: 'The best cloud database',
    image: '../assets/ex3/firebase.png',
  );

  final String title;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.description,
    required this.image,
  });
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: const Text('Products')),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(product: Product.dart),
              SizedBox(height: 15),
              ProductCard(product: Product.flutter),
              SizedBox(height: 15),
              ProductCard(product: Product.firebase),
            ],
          ),
        ),
      ),
    ),
  );
}

// 2. Reusable widget
class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.image, width: 60, height: 60),
            const SizedBox(height: 10),
            Text(
              product.title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Text(product.description, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
