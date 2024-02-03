import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/authentication/authentication_bloc.dart';
import 'package:flutter_machine_test/domain/authentication/i_authentication.dart';
import 'package:flutter_machine_test/domain/core/di/injection.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_machine_test/presentation/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependency();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthenticationBloc(
            getIt<IAuthenticationFacade>(),
          ),
        )
      ],
      child: MaterialApp(
        builder: BotToastInit(),
        navigatorObservers: [
          BotToastNavigatorObserver(),
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
