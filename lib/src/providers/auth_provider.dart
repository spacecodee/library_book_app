import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_book_app/src/core/vo/user/client/user_client_vo.dart';
import 'package:library_book_app/src/service/auth/auth_service.dart';

final authProvider = StateNotifierProvider<AuthNotifier, String>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<String> {
  AuthNotifier() : super('');

  final AuthService _authService = AuthService();

  Future<String> register(UserClientVo vo) async {
    return await _authService.register(vo);
  }
}
