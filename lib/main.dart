import 'dart:async';
import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwa_navigation_routing_framework/argument_based.dart';
import 'package:pwa_navigation_routing_framework/parameter_based.dart';
import 'package:pwa_navigation_routing_framework/path_based.dart';
import 'bottom_navigation_bar/home.dart';
import 'bottom_navigation_bar/product.dart';
import 'bottom_navigation_bar/product_details.dart';
import 'bottom_navigation_bar/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _initDeepLink();
  }

  Future<void> _initDeepLink() async {
    final AppLinks appLinks = AppLinks();
    appLinks.uriLinkStream.listen((uri) => _handleDeepLink(uri));
  }

  void _handleDeepLink(Uri link) {
    if (link.pathSegments.length == 3 && link.pathSegments[0] == 'product') {
      final catId = link.pathSegments[1];
      final prodId = link.pathSegments[2];
      final viewAs = link.queryParameters['view_as'] ?? 'default';
      final prodSize = link.queryParameters['prod_size'] ?? 'default';
      final prodQuantity = link.queryParameters['prod_quantity'] ?? '0';

      Get.toNamed(
        '/product/$catId/$prodId',
        parameters: {
          'view_as': viewAs,
          'prod_size': prodSize,
          'prod_quantity': prodQuantity,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => const MainLayout(child: HomePage()),
            transition: Transition.noTransition,
            children: [
              GetPage(
                name: '/path_based/:id',
                page: () {
                  final String id = Get.parameters['id']!;
                  return PathBasedPage(id: id);
                },
              ),
              GetPage(
                name: '/argument_based',
                page: () => const ArgumentBasedPage(),
              ),
              GetPage(
                name: '/parameter_based',
                page: () => const ParameterBasedPage(),
              ),
            ],
          ),
          GetPage(
            name: '/product',
            page: () => const MainLayout(child: ProductPage()),
            transition: Transition.noTransition,
            children: [
              GetPage(
                name: '/:cat_id/:prod_id',
                page: () {
                  final String catId = Get.parameters['cat_id']!;
                  final String prodId = Get.parameters['prod_id']!;
                  return ProductDetailsPage(catId: catId, proId: prodId);
                },
              ),
            ],
          ),
          GetPage(
            name: '/profile',
            page: () => const MainLayout(child: ProfilePage()),
            transition: Transition.noTransition,
          ),
        ],
      );
}

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _getSelectedIndex(context),
          onTap: (index) {
            switch (index) {
              case 0:
                Get.toNamed('/');
                break;
              case 1:
                Get.toNamed('/product');
                break;
              case 2:
                Get.toNamed('/profile');
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Product'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      );

  int _getSelectedIndex(BuildContext context) =>
      Get.currentRoute.startsWith('/product')
          ? 1
          : Get.currentRoute.startsWith('/profile')
              ? 2
              : 0;
}
