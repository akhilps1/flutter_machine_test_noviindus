import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';
import 'package:flutter_machine_test/domain/patient/model/patient.dart';

abstract class IPatientsFacade {
  Future<Either<MainFailure, List<Patient>>> getPatients(String token) {
    throw UnimplementedError(
        'getPatient() not implemented, implement the method before calling.');
  }
}
