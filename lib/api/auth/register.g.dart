// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterVo _$RegisterVoFromJson(Map<String, dynamic> json) => RegisterVo(
      phone: json['phone'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$RegisterVoToJson(RegisterVo instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
      'name': instance.name,
    };

RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) => RegisterDto(
      token: json['token'] as String,
      role: json['role'] as int,
      username: json['username'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$RegisterDtoToJson(RegisterDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'role': instance.role,
      'username': instance.username,
      'userId': instance.userId,
    };
