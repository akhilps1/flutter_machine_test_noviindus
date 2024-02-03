import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.serverFailure({required String errorMsg}) =
      _ServerFailure;
  const factory MainFailure.unknownFailure({required String errorMsg}) =
      _UnknownFailure;
  const factory MainFailure.notAuthenticated({required String errorMsg}) =
      _NotAuthenticated;
}
