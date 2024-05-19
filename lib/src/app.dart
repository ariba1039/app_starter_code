import 'package:app_starter/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => 'Starter Code',
      builder: (context, widget) {
        return MediaQuery(
          ///Setting font does not change with system font size
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget ?? Container(),
        );
      },
    );
  }
}
