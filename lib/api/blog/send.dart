import 'package:blog_web/network/http.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send.g.dart';

@JsonSerializable()
class SendVo implements Vo {
  final String content;

  SendVo({required this.content});

  @override
  factory SendVo.fromJson(Map<String, dynamic> json) => _$SendVoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SendVoToJson(this);

  @override
  String get path => '/blog/publish';
}

@JsonSerializable()
class SendDto implements Dto {
  final int id;

  SendDto({required this.id});

  @override
  factory SendDto.fromJson(Map<String, dynamic> json) =>
      _$SendDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SendDtoToJson(this);
}
