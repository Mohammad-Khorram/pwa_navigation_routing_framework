import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathBasedPage extends StatelessWidget {
  final String id;

  const PathBasedPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Path data')),
        body: Center(
          child: _isNumber(id)
              ? Text(id)
              : Text(
                  'The page should have int path data, but the path data isn\'t int!\n(The developer must redirect page to the 404 or previous route or show error)',
                  textAlign: TextAlign.center,
                ),
        ),
      );

  bool _isNumber(String input) {
    try {
      double.parse(input);
      return true;
    } catch (e) {
      return false;
    }
  }
}
