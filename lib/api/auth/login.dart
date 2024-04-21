import 'package:blog_web/network/http.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class LoginVo implements Vo {
  String phone;
  String password;
  String key;
  String verify;

  LoginVo({required this.phone, required this.password, required this.key, required this.verify});

  @override
  factory LoginVo.fromJson(Map<String, dynamic> json) =>
      _$LoginVoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginVoToJson(this);

  @override
  String get path => '/auth/login';
}

@JsonSerializable()
class LoginDto implements Dto {
  final String token;
  final int role;
  final String username;
  final int userId;

  LoginDto(
      {required this.token,
      required this.role,
      required this.username,
      required this.userId});

  @override
  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}
