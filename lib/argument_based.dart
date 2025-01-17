import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentBasedPage extends StatelessWidget {
  const ArgumentBasedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String? argumentsData = Get.arguments as String?;
    return Scaffold(
      appBar: AppBar(title: const Text('Argument data')),
      body: Center(
          child: argumentsData == null
              ? Text(
                  'The page should have body argument data, but body argument is empty!\n(The developer must redirect page to the 404 or previous route or show error)',
                  textAlign: TextAlign.center,
                )
              : Text(argumentsData)),
    );
  }
}
