import 'package:flutter/material.dart';
import 'package:growexpoproject/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:growexpoproject/common/common.dart';
import 'package:growexpoproject/features/auth/controller/auth_controller.dart';
import 'package:growexpoproject/features/auth/view/signup_view.dart';
import 'package:growexpoproject/features/home/view/home_view.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
  
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'GrowExpo',
      theme: AppTheme.theme,
      home: ref.watch(currentUserAccountProvider).when(
            data: (user) {
              if (user != null) {
                return const HomeView();
              }
              return const SignUpView();
            },
            error: (error, st) => ErrorPage(
              error: error.toString(),
            ),
            loading: () => const LoadingPage(),
          ),
    );
  }
}
