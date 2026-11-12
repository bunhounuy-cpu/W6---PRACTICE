import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: ProductsPage()),
  );
}

// Product enum
enum Product {
  dart(
    title: 'Dart',
    description: 'The best object language',
    image: 'assets/ex3/dart.png',
  ),

  flutter(
    title: 'Flutter',
    description: 'The best mobile widget library',
    image: 'assets/ex3/flutter.png',
  ),

  firebase(
    title: 'Firebase',
    description: 'The best cloud database',
    image: 'assets/ex3/firebase.png',
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

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products', style: TextStyle(fontSize: 14)),
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFF2196F3),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            ProductCard(product: Product.dart),
            ProductCard(product: Product.flutter),
            ProductCard(product: Product.firebase),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image,
              width: 40,
              height: 45,
              fit: BoxFit.contain,
            ),

            Text(
              product.title,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),

            Text(
              product.description,
              style: const TextStyle(fontSize: 8, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
