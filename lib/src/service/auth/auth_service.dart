import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:library_book_app/src/core/dto/api/http_response_api_dto.dart';
import 'package:library_book_app/src/core/pojo/auth_user_pojo.dart';
import 'package:library_book_app/src/core/vo/user/client/user_client_vo.dart';
import 'package:logger/logger.dart';

class AuthService {
  final _dio = Dio();
  final _logger = Logger();
  final authRouter = '${dotenv.env['API_URL_V1']}/auth';

  Future<String> register(UserClientVo vo) async {
    final response = await _dio.post<HttpResponseApiDto>(
      authRouter,
      data: vo.toJson(),
    );

    final HttpResponseApiDto data = response.data!;

    if (response.data != null) {
      if (data.statusCode == 200) {
        return data.message;
      }
    }

    _logger.i(data.message, data.statusCode);
    return data.message;
  }

  void login(AuthUserPojo authUserPojo) {}
}
