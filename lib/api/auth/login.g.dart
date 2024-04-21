// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginVo _$LoginVoFromJson(Map<String, dynamic> json) => LoginVo(
      phone: json['phone'] as String,
      password: json['password'] as String,
      key: json['key'] as String,
      verify: json['verify'] as String,
    );

Map<String, dynamic> _$LoginVoToJson(LoginVo instance) => <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
      'key': instance.key,
      'verify': instance.verify,
    };

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      token: json['token'] as String,
      role: json['role'] as int,
      username: json['username'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'token': instance.token,
      'role': instance.role,
      'username': instance.username,
      'userId': instance.userId,
    };
