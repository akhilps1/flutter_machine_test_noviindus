import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/application/core/api_end_points.dart';
import 'package:flutter_machine_test/application/core/app_settings.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';
import 'package:flutter_machine_test/domain/patient/i_patients_facade.dart';
import 'package:flutter_machine_test/domain/patient/model/patient.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPatientsFacade)
class IPatientsImpl implements IPatientsFacade {
  IPatientsImpl();
  @override
  Future<Either<MainFailure, List<Patient>>> getPatients(String token) async {
    try {
      http.Response response = await http.get(
        Uri.parse('${AppSettings.webServiceUrl}/${ApiEndPoints.patientList}'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = json.decode(response.body);

        log(response.body);

        return right(
          [
            ...responseData['patient'].map(
              (data) => Patient.fromJson(data),
            ),
          ],
        );
      } else {
        return left(
          const MainFailure.serverFailure(errorMsg: 'Server failure'),
        );
      }
    } catch (error) {
      return left(
        const MainFailure.unknownFailure(errorMsg: 'Somthing went wrong'),
      );
    }
  }
}
