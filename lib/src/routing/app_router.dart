import 'package:app_starter/src/features/auth/presentation/create_account_screen.dart';
import 'package:app_starter/src/features/auth/presentation/login_screen.dart';
import 'package:app_starter/src/features/report/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppRoute {
  login,
  createAccount,
  home,
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/login',
      debugLogDiagnostics: false,
      routes: [
        GoRoute(
          path: '/login',
          name: AppRoute.login.name,
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: 'createAccount',
              name: AppRoute.createAccount.name,
              builder: (context, state) => const CreateAccountScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/',
          name: AppRoute.home.name,
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
  },
);
