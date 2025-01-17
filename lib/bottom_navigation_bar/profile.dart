import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('route is: /profile'),
            ElevatedButton(
              onPressed: () => _showProfileModal(context),
              child: const Text('Show Profile Modal'),
            ),
          ],
        ),
      );

  void _showProfileModal(BuildContext context) {
    Get.toNamed('/profile/user_info_modal');
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Route is changed while modal is opening'),
            const Text('route is: /profile/user_info_modal'),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    ).whenComplete(() => Get.offNamed('/profile'));
  }
}
