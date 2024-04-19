import 'package:blog_web/network/http.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete.g.dart';

@JsonSerializable()
class DeleteVo implements Vo {
  int id;

  DeleteVo({required this.id});

  @override
  factory DeleteVo.fromJson(Map<String, dynamic> json) =>
      _$DeleteVoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteVoToJson(this);

  @override
  String get path => '/blog/delete';
}

@JsonSerializable()
class DeleteDto implements Dto {
  DeleteDto();

  @override
  factory DeleteDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteDtoToJson(this);
}
