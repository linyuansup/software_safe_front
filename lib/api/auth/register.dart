import 'package:blog_web/network/http.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class RegisterVo implements Vo {
  String phone;
  String password;
  String name;

  RegisterVo({required this.phone, required this.password, required this.name});

  @override
  factory RegisterVo.fromJson(Map<String, dynamic> json) =>
      _$RegisterVoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RegisterVoToJson(this);

  @override
  String get path => '/auth/register';
}

@JsonSerializable()
class RegisterDto implements Dto {
  final String token;
  final int role;
  final String username;
  final int userId;

  @override
  RegisterDto(
      {required this.token, required this.role, required this.username, required this.userId});

  @override
  factory RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RegisterDtoToJson(this);
}
