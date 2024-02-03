import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/authentication/authentication_bloc.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:flutter_machine_test/presentation/authentication/authentication_screen.dart';
import 'package:flutter_machine_test/presentation/core/app_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      context.read<AuthenticationBloc>().add(const CheckAuthenticated());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.failureOrSuccess.fold(
          () => null,
          (failureOrSuccess) {
            if (failureOrSuccess.isRight()) {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => const AppWidget(),
                  ),
                  (route) => false);
            }

            if (failureOrSuccess.isLeft()) {
              context.read<AuthenticationBloc>().add(const ClearFailure());
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => const AuthenticationScreen(),
                  ),
                  (route) => false);
            }
          },
        );
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppAssets.splashImg,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
