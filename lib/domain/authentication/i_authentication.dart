import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';

abstract class IAuthenticationFacade {
  /// return [Unit] if successsfully  autheniticated using given [userName] and [password],
  /// else returen [MainFailure].
  Future<Either<MainFailure, String>> authentcate({
    required String userName,
    required String password,
  }) {
    throw UnimplementedError(
        'login() not implemented, implement the method before calling.');
  }

  Either<MainFailure, String> checkAuthenticated() {
    throw UnimplementedError(
        'checkAuthenticated() not implemented, implement the method before calling.');
  }
}
