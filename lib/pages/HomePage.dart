import 'package:flutter/material.dart';
import 'package:para_recommand_app/pages/product_Detail_Page.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Recommendation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter product name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the results page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(productName: _controller.text),
                  ),
                );
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultsPage extends StatelessWidget {
  final String productName;

  ResultsPage({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results for $productName'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual number of results
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Product $index'), // Replace with actual product name
            subtitle: Text('Best price: \$XX.XX'), // Replace with actual price
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(productId: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
