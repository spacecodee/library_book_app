import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:library_book_app/src/core/dto/user/user_global_account.dart';
import 'package:library_book_app/src/service/auth/auth_service.dart';
import 'package:library_book_app/src/service/token/authentication_service.dart';
import 'package:logger/logger.dart';

class GlobalUserService {
  final _dio = Dio();
  final _logger = Logger();
  final _authRouter = '${dotenv.env['API_URL_V1']}/auth';
  final _authenticationClient = AuthenticationClient();
  final _authService = AuthService();

  Future<UserGlobalAccount> getAccount() async {
    String token = await _authenticationClient.accessToken;
    final username = await _authenticationClient.getUserName();
    final isTokenExpired = await _authenticationClient.isTokenExpired(token);

    if(isTokenExpired){
      final newToken = await _authService.refreshToken(token);
      token = newToken.token;
    }

    _dio.options.headers['Authorization'] = 'Bearer ${token.trim()}';

    try {
      final response = await _dio.get(
        '$_authRouter/get-account?username=$username',
      );

      return UserGlobalAccount.fromJson(response.data['data']);
    } catch (error) {
      _logger.i('error: $error');
    }

    return Future.error('Error');
  }
}
