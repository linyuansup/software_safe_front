import 'package:blog_web/network/http.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get.g.dart';

@JsonSerializable()
class GetVo implements Vo {
  GetVo();

  @override
  factory GetVo.fromJson(Map<String, dynamic> json) => _$GetVoFromJson(json);

  @override
  String get path => '/blog/get';

  @override
  Map<String, dynamic> toJson() => _$GetVoToJson(this);
}

@JsonSerializable()
class GetDto implements Dto {
  final List<Blog> blogs;

  GetDto({required this.blogs});

  @override
  factory GetDto.fromJson(Map<String, dynamic> json) => _$GetDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GetDtoToJson(this);
}

@JsonSerializable()
class Blog {
  final int id;
  final String content;
  final String sender;
  final int senderId;
  final String time;

  Blog(
      {required this.id,
      required this.content,
      required this.senderId,
      required this.sender,
      required this.time});

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);

  Map<String, dynamic> toJson() => _$BlogToJson(this);
}
