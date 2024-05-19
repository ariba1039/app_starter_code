import 'package:app_starter/src/constants/app_sizes.dart';
import 'package:app_starter/src/routing/app_router.dart';
import 'package:app_starter/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            gapH20,
            const Text('Welcome').displaylgBold,
            gapH20,
            TextButton(
              onPressed: () {
                context.goNamed(AppRoute.login.name);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
