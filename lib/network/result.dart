import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Result<T> {
  final T data;
  final String msg;
  final int code;

  Result({required this.data, required this.msg, required this.code});

  factory Result.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResultFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ResultToJson(this, toJsonT);
}
