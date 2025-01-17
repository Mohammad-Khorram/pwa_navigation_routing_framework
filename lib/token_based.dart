import 'package:flutter/material.dart';

class TokenBasedPage extends StatefulWidget {
  const TokenBasedPage({super.key});

  @override
  State<TokenBasedPage> createState() => _TokenBasedPageState();
}

class _TokenBasedPageState extends State<TokenBasedPage> {
  @override
  void initState() {
    super.initState();
    _initToken();
  }

  void _initToken() {}

  @override
  Widget build(BuildContext context) => Scaffold();
}
