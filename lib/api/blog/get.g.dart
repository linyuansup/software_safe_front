// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetVo _$GetVoFromJson(Map<String, dynamic> json) => GetVo();

Map<String, dynamic> _$GetVoToJson(GetVo instance) => <String, dynamic>{};

GetDto _$GetDtoFromJson(Map<String, dynamic> json) => GetDto(
      blogs: (json['blogs'] as List<dynamic>)
          .map((e) => Blog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetDtoToJson(GetDto instance) => <String, dynamic>{
      'blogs': instance.blogs,
    };

Blog _$BlogFromJson(Map<String, dynamic> json) => Blog(
      id: json['id'] as int,
      content: json['content'] as String,
      senderId: json['senderId'] as int,
      sender: json['sender'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'sender': instance.sender,
      'senderId': instance.senderId,
      'time': instance.time,
    };
