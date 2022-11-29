import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:library_book_app/src/core/dto/book/book_and_rating_promedio_dto.dart';
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
    final validate = await validateToken();
    if (!validate) {
      return ShowBookDto();
    }

    final username = await _authenticationClient.getUserName();

    try {
      final response = await _dio.get(
        '$authRouter/find-by/$bookId?username=$username',
      );
      return ShowBookDto.fromJson(response.data['data']);
    } catch (e) {
      _logger.e(e);
    }

    return ShowBookDto(
      name: '',
      author: '',
      categoryName: '',
      pdf: '',
      description: '',
      globalRating: 0,
      id: 0,
      image: '',
      pages: 0,
      rating: 0,
    );
  }

  Future<List<BookAndRatingPromedioDto>> findByNameLike(String name) async {
    final validate = await validateToken();
    if (!validate) {
      return List.empty();
    }
    String token = await _authenticationClient.accessToken;
    _dio.options.headers['Authorization'] = 'Bearer ${token.trim()}';

    try {
      _logger.i('name: $name');
      final response = await _dio.get(
        '$authRouter/search-by/$name',
      );

      return List<BookAndRatingPromedioDto>.from(
          response.data['data'].map((x) => BookAndRatingPromedioDto.fromJson(x)));
    } catch (error) {
      _logger.i('error: $error');
    }

    return Future.error('Error');
  }

  Future<bool> validateToken() async {
    final token = await _authenticationClient.accessToken;
    if (token.isEmpty) {
      return false;
    }

    final isTokenExpired = await _authenticationClient.isTokenExpired(token);
    if (isTokenExpired) {
      final newToken = await _authService.refreshToken(token);
      await _authenticationClient.saveSession(newToken);
    }

    return true;
  }
}
