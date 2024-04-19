import 'dart:convert';

import 'package:blog_web/api/auth/login.dart';
import 'package:blog_web/api/auth/register.dart';
import 'package:blog_web/api/blog/delete.dart';
import 'package:blog_web/api/blog/get.dart';
import 'package:blog_web/api/blog/send.dart';
import 'package:blog_web/global.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oktoast/oktoast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:crypto/crypto.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@freezed
class UiState with _$UiState {
  const factory UiState({
    required List<Blog>? blog,
    required bool isRefreshing,
    required String? username,
    required int? userId,
    required int role,
    required String sending,
    required String phone,
    required String inputName,
    required String password,
  }) = _UiState;
}

@riverpod
class Ui extends _$Ui {
  @override
  UiState build() {
    return const UiState(
      blog: null,
      role: -1,
      isRefreshing: true,
      username: null,
      userId: null,
      sending: '',
      inputName: '',
      phone: '',
      password: '',
    );
  }

  void getBlog() {
    http.post(GetVo(), (json) => GetDto.fromJson(json)).then((result) {
      state = state.copyWith(
        blog: result.blogs,
      );
    }).onError((error, stackTrace) {
      showToast(error.toString());
    });
  }

  set username(String username) => state = state.copyWith(username: username);
  set phone(String phone) => state = state.copyWith(phone: phone);
  set password(String password) => state = state.copyWith(password: password);
  set sending(String sending) => state = state.copyWith(sending: sending);
  set inputName(String inputName) =>
      state = state.copyWith(inputName: inputName);

  Future<bool> login() async {
    return http
        .post(
            LoginVo(
                phone: state.phone,
                password: md5.convert(utf8.encode(state.password)).toString()),
            (json) => LoginDto.fromJson(json))
        .then((response) {
      http.token = response.token;
      state = state.copyWith(
          role: response.role,
          username: response.username,
          userId: response.userId);
      getBlog();
      return true;
    }).onError((error, stackTrace) {
      showToast(error.toString());
      return false;
    });
  }

  Future<bool> register() async {
    return http
        .post(
            RegisterVo(
                phone: state.phone,
                password: state.password,
                name: state.inputName),
            (json) => RegisterDto.fromJson(json))
        .then((response) {
      http.token = response.token;
      state = state.copyWith(
          role: response.role,
          username: response.username,
          userId: response.userId);
      getBlog();
      return true;
    }).onError((error, stackTrace) {
      showToast(error.toString());
      return false;
    });
  }

  Future<bool> add() async {
    return http
        .post(SendVo(content: state.sending), (json) => SendDto.fromJson(json))
        .then((value) {
      getBlog();
      return true;
    }).onError((error, stackTrace) {
      showToast(error.toString());
      return false;
    });
  }

  Future<bool> delete(int id) async {
    return http
        .post(DeleteVo(id: id), (json) => DeleteDto.fromJson(json))
        .then((value) {
      getBlog();
      return true;
    }).onError((error, stackTrace) {
      showToast(error.toString());
      return false;
    });
  }
}
