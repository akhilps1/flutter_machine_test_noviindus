import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/application/core/api_end_points.dart';
import 'package:flutter_machine_test/application/core/app_settings.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';
import 'package:flutter_machine_test/domain/patient/model/patient.dart';
import 'package:flutter_machine_test/domain/register/i_register_facade.dart';
import 'package:flutter_machine_test/domain/register/models/treatment.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRegisterFacade)
class IRegisterImpl implements IRegisterFacade {
  IRegisterImpl();
  @override
  Future<Either<MainFailure, List<Branch>>> getBranchList(String token) async {
    try {
      http.Response response = await http.get(
        Uri.parse('${AppSettings.webServiceUrl}/${ApiEndPoints.branchList}'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = json.decode(response.body);

        return right(
          [
            ...responseData['branches'].map((data) => Branch.fromJson(data)),
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

  @override
  Future<Either<MainFailure, List<Treatment>>> getTreatmentList(
      String token) async {
    try {
      http.Response response = await http.get(
        Uri.parse('${AppSettings.webServiceUrl}/${ApiEndPoints.treatmentList}'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = json.decode(response.body);

        return right(
          [
            ...responseData['treatments']
                .map((data) => Treatment.fromJson(data)),
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
