import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParameterBasedPage extends StatelessWidget {
  const ParameterBasedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String?> parametersData = Get.parameters;
    return Scaffold(
      appBar: AppBar(title: const Text('Parameter data')),
      body: Center(
          child: parametersData['id'] == null
              ? Text(
                  'The page should have query parameter data, but query parameter is empty!\n(The developer must redirect page to the 404 or previous route or show error)',
                  textAlign: TextAlign.center,
                )
              : Text(parametersData['id']!)),
    );
  }
}
