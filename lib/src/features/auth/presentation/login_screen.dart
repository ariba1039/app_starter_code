import 'package:app_starter/src/constants/app_sizes.dart';
import 'package:app_starter/src/routing/app_router.dart';
import 'package:app_starter/src/theme/app_colors.dart';
import 'package:app_starter/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gapH20,
            const Text('Welcome').displaysmBold,
            gapH20,
            const Text('Sign in to continue')
                .textmdMedium
                .foregroundColor(AppColors.primary),
            gapH12,
            TextFormField(
              controller: emailController,
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(AppRoute.createAccount.name);
              },
              child: const Text('Create Account'),
            ),
            gapH12,
            TextButton(
              onPressed: () {
                context.goNamed(AppRoute.home.name);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
