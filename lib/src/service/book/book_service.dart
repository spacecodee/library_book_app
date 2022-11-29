import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:library_book_app/src/core/dto/book/show_book_dto.dart';
import 'package:library_book_app/src/service/auth/auth_service.dart';
import 'package:library_book_app/src/service/token/authentication_service.dart';
import 'package:logger/logger.dart';

class BookService {
  final _dio = Dio();
  final _logger = Logger();
  final authRouter = '${dotenv.env['API_URL_V1']}/book';
  final _authenticationClient = AuthenticationClient();
  final _authService = AuthService();

  Future<ShowBookDto> findByBookIdAndClientUsername(int bookId) async {
    final token = await _authenticationClient.accessToken;
    if (token.isEmpty) {
      return ShowBookDto();
    }

    final isTokenExpired = await _authenticationClient.isTokenExpired(token);
    if (isTokenExpired) {
      final newToken = await _authService.refreshToken(token);
      await _authenticationClient.saveSession(newToken);
    }

    final username = await _authenticationClient.getUserName();

    final response = await _dio.get(
      '$authRouter/find-by/$bookId?username=$username',
    );

    return ShowBookDto.fromJson(response.data['data']);
  }
}
