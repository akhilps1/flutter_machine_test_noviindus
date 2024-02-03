import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/patients/patients_bloc.dart';
import 'package:flutter_machine_test/presentation/patients/patients_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const PatientsScreen();
  }
}
