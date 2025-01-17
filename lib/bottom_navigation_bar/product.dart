import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Route is: /product'),
            ElevatedButton(
              onPressed: () {
                String catId = 'aa';
                int prodId = 123;
                Get.toNamed(
                  '/product/$catId/${prodId.toString()}',
                  parameters: {
                    'view_as': 'simple',
                    'prod_size': 'sm',
                    'prod_quantity': '24',
                  },
                );
              },
              child: const Text('Product details'),
            ),
          ],
        ),
      );
}
