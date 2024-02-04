import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';
import 'package:flutter_machine_test/domain/patient/model/patient.dart';
import 'package:flutter_machine_test/domain/register/models/treatment.dart';

abstract class IRegisterFacade {
  Future<Either<MainFailure, List<Branch>>> getBranchList(String token) {
    throw UnimplementedError(
        'getBranchList() not implemented, implement the method before calling.');
  }

  Future<Either<MainFailure, List<Treatment>>> getTreatmentList(String token) {
    throw UnimplementedError(
        'getTreatmentList() not implemented, implement the method before calling.');
  }
}
