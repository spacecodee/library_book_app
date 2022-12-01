import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:library_book_app/src/core/dto/rating/book/rating_book_dto.dart';
import 'package:library_book_app/src/service/auth/auth_service.dart';
import 'package:library_book_app/src/service/token/authentication_service.dart';
import 'package:logger/logger.dart';

class RatingBookService {
  final _dio = Dio();
  final _logger = Logger();
  final authRouter = '${dotenv.env['API_URL_V1']}/rating-book';
  final _authenticationClient = AuthenticationClient();
  final _authService = AuthService();

  Future<bool> leaveRating(RatingBookDto dto) async {
    String token = await _authenticationClient.accessToken;
    _dio.options.headers['Authorization'] = 'Bearer ${token.trim()}';

    try {
      final response = await _dio.post(
        '$authRouter/add-rating/${dto.bookId}?username=${dto.username}&ratingBook=${dto.ratingBook}',
      );

      if (response.data['statusCode'] == 200) {
        return true;
      }
    } catch (e) {
      _logger.e(e);
    }

    return false;
  }
}
