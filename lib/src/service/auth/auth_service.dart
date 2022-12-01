import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:library_book_app/src/core/dto/api/http_response_api_dto.dart';
import 'package:library_book_app/src/core/dto/jwt/jwt_dto.dart';
import 'package:library_book_app/src/core/pojo/auth_user_pojo.dart';
import 'package:library_book_app/src/core/vo/user/client/user_client_vo.dart';
import 'package:logger/logger.dart';

class AuthService {
  final _dio = Dio();
  final _logger = Logger();
  final authRouter = '${dotenv.env['API_URL_V1']}/auth';

  Future<bool> register(UserClientVo vo) async {
    try {
      final response = await _dio.post(
        '$authRouter/register-client',
        data: vo.toJson(),
      );

      print('response: ${response.data}');
      final HttpResponseApiDto data = HttpResponseApiDto.fromJson(response.data);
      if (data.statusCode == 200) {
        return true;
      }
    } catch (e) {
      _logger.e(e);

      return false;
    }

    return false;
  }

  Future<JwtDto> login(AuthUserPojo authUserPojo) async {
    try {
      final response = await _dio.post(
        '$authRouter/login',
        data: authUserPojo.toJson(),
      );

      return JwtDto.fromJson(response.data['data']);
    } catch (e) {
      _logger.e(e);
    }

    return JwtDto();
  }

  Future<JwtDto> refreshToken(String token) async {
    try {
      final jwtDto = JwtDto(token: token);

      final response = await _dio.post(
        '$authRouter/refresh-token',
        data: jwtDto.toJson(),
      );
      return JwtDto.fromJson(response.data['data']);
    } catch (e) {
      _logger.e(e);
    }

    return JwtDto();
  }
}
