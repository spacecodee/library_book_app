import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:library_book_app/src/core/dto/jwt/jwt_dto.dart';
import 'package:library_book_app/src/core/pojo/json_payload_pojo.dart';

class AuthenticationClient {
  final _flutterSecureStorage = const FlutterSecureStorage();

  Future<String> get accessToken async {
    await logOut();
    final data = await _flutterSecureStorage.read(key: 'SESSION');
    if (data != null) {
      final session = JwtDto.fromJson(jsonDecode(data));
      return session.token;
    }

    return '';
  }

  Future<String> getUserName() async {
    final isLogged = await isLoggedIn();

    if (isLogged) {
      return '';
    }

    final token = await accessToken;
    if (token.isNotEmpty) {
      final values = _setBase64Token(token);
      return values.sub;
    }

    return '';
  }

  Future<void> saveSession(JwtDto dto) async {
    final data = jsonEncode(dto.toJson());

    await _flutterSecureStorage.write(key: 'SESSION', value: data);
  }

  Future<bool> isSomeone(String whoRoleIs) async {
    final isLogged = await isLoggedIn();

    if (!isLogged) {
      return false;
    }

    final token = await accessToken;

    if (token.isNotEmpty) {
      final values = _setBase64Token(token.toString());
      final roles = values.roles;
      return roles.contains(whoRoleIs);
    }

    return false;
  }

  JsonPayLoadDto _setBase64Token(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return JsonPayLoadDto.fromJson(decodedToken);
  }

  Future<void> logOut() {
    return _flutterSecureStorage.delete(key: 'SESSION');
  }

  Future<bool> isTokenExpired(String token) async {
    return JwtDecoder.isExpired(token);
  }

  Future<bool> isLoggedIn() async {
    final value = await accessToken;
    return value.isNotEmpty;
  }
}
