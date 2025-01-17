import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsPage extends StatelessWidget {
  final String catId;
  final String proId;

  const ProductDetailsPage({
    super.key,
    required this.catId,
    required this.proId,
  });

  @override
  Widget build(BuildContext context) {
    final String viewAs = Get.parameters['view_as'] ?? 'default';
    final String prodSize = Get.parameters['prod_size'] ?? 'default';
    final String prodQuantity = Get.parameters['prod_quantity'] ?? '0';

    return Scaffold(
      appBar: AppBar(title: const Text('Product Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'route is: /product/$catId/$proId?view_as=$viewAs&prod_size=$prodSize&prod_quantity=$prodQuantity',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text('Category ID: $catId'),
            Text('Product ID: $proId'),
            Text('View As: $viewAs'),
            Text('Product Size: $prodSize'),
            Text('Product Quantity: $prodQuantity'),
          ],
        ),
      ),
    );
  }
}
