import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Route is: /'),
            const SizedBox(height: 16),
            Text('Path based'),
            ElevatedButton(
              onPressed: () => Get.toNamed('/path_based/1'),
              child: const Text('With path data'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/path_based/should_be_int_path'),
              child: const Text('With wrong path data'),
            ),
            const SizedBox(height: 16),
            Text('Body Argument based'),
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed('/argument_based', arguments: 'some_data'),
              child: const Text('With Argument data'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/argument_based'),
              child: const Text('Without Argument data'),
            ),
            const SizedBox(height: 16),
            Text('Query Parameter based'),
            ElevatedButton(
              onPressed: () =>
                  Get.toNamed('/parameter_based', parameters: {'id': 'some_data'}),
              child: const Text('With Parameter data'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/parameter_based'),
              child: const Text('Without Parameter data'),
            ),
          ],
        ),
      );
}
