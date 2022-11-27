import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:library_book_app/src/core/dto/book/show_book_dto.dart';
import 'package:library_book_app/src/core/dto/category/book/category_book_and_book_dto.dart';
import 'package:logger/logger.dart';

class CategoryBookService {
  final _dio = Dio();
  final _logger = Logger();
  final _authRouter = '${dotenv.env['API_URL_V1']}/category-book';

  Future<List<CategoryBookAndBookDto>> list() async {
    final response = await _dio.get(
      '$_authRouter/find-all',
    );
    final List<CategoryBookAndBookDto> listData = [];
    final data = response.data['data'] as List;

    if (data.isNotEmpty) {
      for (var element in data) {
        final categoryBookAndBookDto = CategoryBookAndBookDto.fromJson(element);
        listData.add(categoryBookAndBookDto);
      }
    }

    return listData;
  }

  Future<ShowBookDto> getByBookIdAndClientId(int bookId, int clientId) async {
    final response = await _dio.get(
      '$_authRouter/find-by/$bookId?clientId=$clientId',
    );

    return ShowBookDto.fromJson(response.data['data']);
  }
}
