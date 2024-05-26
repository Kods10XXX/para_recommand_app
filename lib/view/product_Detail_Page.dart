import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final int productId;

  ProductDetailPage({required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Product Name', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Description: This is a detailed description of the product.'),
            SizedBox(height: 8),
            Text('Best Price: \$XX.XX'),
            SizedBox(height: 8),
            Text('Address: 1234 Pharmacy St, City, Country'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Action to buy the product
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
