import 'package:app_starter/src/constants/app_sizes.dart';
import 'package:app_starter/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateAccountScreen extends HookConsumerWidget {
  const CreateAccountScreen({super.key});
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
            const Text('Create Account')
                .displaymdRegular
                .foregroundColor(Colors.red),
            gapH20,
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
