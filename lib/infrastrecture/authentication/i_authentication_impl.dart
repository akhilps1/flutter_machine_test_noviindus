import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/application/core/api_end_points.dart';
import 'package:flutter_machine_test/application/core/app_settings.dart';
import 'package:flutter_machine_test/domain/authentication/i_authentication.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthenticationFacade)
class IAuthenticationImpl implements IAuthenticationFacade {
  IAuthenticationImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  @override
  Future<Either<MainFailure, String>> authentcate({
    required String userName,
    required String password,
  }) async {
    try {
      // Login to get the token
      http.Response loginResponse = await http.post(
        Uri.parse('${AppSettings.webServiceUrl}/${ApiEndPoints.login}'),
        body: {
          'username': userName,
          'password': password,
        },
      );

      if (loginResponse.statusCode == 200) {
        Map<String, dynamic> responseData = json.decode(loginResponse.body);
        String token = responseData['token'];
        await saveToken(token);

        log("Login successful. Token: $token");

        return right(token);
      } else {
        log("Login failed with status code: ${loginResponse.statusCode}");
        log("Server response: ${loginResponse.body}");

        return left(
          const MainFailure.serverFailure(errorMsg: 'Authentication Failed'),
        );
      }
    } catch (error) {
      log("Error: $error");
      return left(
        MainFailure.unknownFailure(
          errorMsg: error.toString(),
        ),
      );
    }
  }

  Future<void> saveToken(String token) async {
    await sharedPreferences.setString('auth-token', token);
  }

  @override
  Either<MainFailure, String> checkAuthenticated() {
    final token = sharedPreferences.getString('auth-token');

    if (token != null) {
      log(token);
      return right(token);
    }
    return left(
      const MainFailure.notAuthenticated(errorMsg: 'Not Authenticated'),
    );
  }
}
