import 'package:better_gtask/state/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_button/create_button.dart';
import 'package:sign_button/sign_button.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: SignInButton(
          buttonType: ButtonType.google,
          onPressed: () => ref.read(authProvider.notifier).signIn(),
        ),
      ),
    );
  }
}
