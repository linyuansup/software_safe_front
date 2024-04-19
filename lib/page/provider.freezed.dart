// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UiState {
  List<Blog>? get blog => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int get role => throw _privateConstructorUsedError;
  String get sending => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get inputName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UiStateCopyWith<UiState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiStateCopyWith<$Res> {
  factory $UiStateCopyWith(UiState value, $Res Function(UiState) then) =
      _$UiStateCopyWithImpl<$Res, UiState>;
  @useResult
  $Res call(
      {List<Blog>? blog,
      bool isRefreshing,
      String? username,
      int? userId,
      int role,
      String sending,
      String phone,
      String inputName,
      String password});
}

/// @nodoc
class _$UiStateCopyWithImpl<$Res, $Val extends UiState>
    implements $UiStateCopyWith<$Res> {
  _$UiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = freezed,
    Object? isRefreshing = null,
    Object? username = freezed,
    Object? userId = freezed,
    Object? role = null,
    Object? sending = null,
    Object? phone = null,
    Object? inputName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as List<Blog>?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      sending: null == sending
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      inputName: null == inputName
          ? _value.inputName
          : inputName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiStateImplCopyWith<$Res> implements $UiStateCopyWith<$Res> {
  factory _$$UiStateImplCopyWith(
          _$UiStateImpl value, $Res Function(_$UiStateImpl) then) =
      __$$UiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Blog>? blog,
      bool isRefreshing,
      String? username,
      int? userId,
      int role,
      String sending,
      String phone,
      String inputName,
      String password});
}

/// @nodoc
class __$$UiStateImplCopyWithImpl<$Res>
    extends _$UiStateCopyWithImpl<$Res, _$UiStateImpl>
    implements _$$UiStateImplCopyWith<$Res> {
  __$$UiStateImplCopyWithImpl(
      _$UiStateImpl _value, $Res Function(_$UiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = freezed,
    Object? isRefreshing = null,
    Object? username = freezed,
    Object? userId = freezed,
    Object? role = null,
    Object? sending = null,
    Object? phone = null,
    Object? inputName = null,
    Object? password = null,
  }) {
    return _then(_$UiStateImpl(
      blog: freezed == blog
          ? _value._blog
          : blog // ignore: cast_nullable_to_non_nullable
              as List<Blog>?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      sending: null == sending
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      inputName: null == inputName
          ? _value.inputName
          : inputName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UiStateImpl implements _UiState {
  const _$UiStateImpl(
      {required final List<Blog>? blog,
      required this.isRefreshing,
      required this.username,
      required this.userId,
      required this.role,
      required this.sending,
      required this.phone,
      required this.inputName,
      required this.password})
      : _blog = blog;

  final List<Blog>? _blog;
  @override
  List<Blog>? get blog {
    final value = _blog;
    if (value == null) return null;
    if (_blog is EqualUnmodifiableListView) return _blog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isRefreshing;
  @override
  final String? username;
  @override
  final int? userId;
  @override
  final int role;
  @override
  final String sending;
  @override
  final String phone;
  @override
  final String inputName;
  @override
  final String password;

  @override
  String toString() {
    return 'UiState(blog: $blog, isRefreshing: $isRefreshing, username: $username, userId: $userId, role: $role, sending: $sending, phone: $phone, inputName: $inputName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateImpl &&
            const DeepCollectionEquality().equals(other._blog, _blog) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.sending, sending) || other.sending == sending) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.inputName, inputName) ||
                other.inputName == inputName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_blog),
      isRefreshing,
      username,
      userId,
      role,
      sending,
      phone,
      inputName,
      password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateImplCopyWith<_$UiStateImpl> get copyWith =>
      __$$UiStateImplCopyWithImpl<_$UiStateImpl>(this, _$identity);
}

abstract class _UiState implements UiState {
  const factory _UiState(
      {required final List<Blog>? blog,
      required final bool isRefreshing,
      required final String? username,
      required final int? userId,
      required final int role,
      required final String sending,
      required final String phone,
      required final String inputName,
      required final String password}) = _$UiStateImpl;

  @override
  List<Blog>? get blog;
  @override
  bool get isRefreshing;
  @override
  String? get username;
  @override
  int? get userId;
  @override
  int get role;
  @override
  String get sending;
  @override
  String get phone;
  @override
  String get inputName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UiStateImplCopyWith<_$UiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
