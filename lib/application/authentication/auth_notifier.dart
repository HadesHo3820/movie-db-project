import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/authentication/auth_event.dart';
import 'package:the_movie_app/application/authentication/auth_state.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/models/account_model.dart';
import 'package:the_movie_app/data/models/request_token_model.dart';
import 'package:the_movie_app/data/models/session_model.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AppUseCase _appUseCase;
  RequestTokenModel? _requestTokenModel;
  SessionModel? sessionModel;
  AuthNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const AuthState.intial());

  void mapEventsToState(AuthEvent event) {
    event.map(getRequestToken: (event) async {
      state = const AuthState.loading();
      final result = await _appUseCase.callData(
          RequestTokenModel.getInstance(), "/authentication/token/new");
      result.fold((failure) {
        state = AuthState.failed(
            message:
                "Request Token Error:${ExceptionUtil.throwSpecificMessage(failure)}");
      }, (result) {
        _requestTokenModel = result;
        state = const AuthState.getRequestTokenSuccessful();
      });
    }, requestLogin: (event) async {
      state = const AuthState.loading();
      if (_requestTokenModel != null) {
        log("event: ${event.username}");
        log("pass: ${event.password}");
        log("requestToken: ${_requestTokenModel!.requestToken}");
        final tokenWithLogin = await _appUseCase.postData(
            RequestTokenModel.getInstance(),
            '/authentication/token/validate_with_login', {
          "username": event.username,
          "password": event.password,
          "request_token": _requestTokenModel!.requestToken
        });
        tokenWithLogin.fold((failure) {
          state = AuthState.failed(
              message:
                  "RequestTokenLoginErr: ${ExceptionUtil.throwSpecificMessage(failure)}");
        }, (requestTokenModel) async {
          final sessionResult = await _appUseCase.postData(
              SessionModel.getInstance(),
              '/authentication/session/new',
              requestTokenModel.toJson());
          sessionResult.fold((failure) {
            state = AuthState.failed(
                message:
                    "SessionIdErr: ${ExceptionUtil.throwSpecificMessage(failure)}");
          }, (sessionModel) async {
            final accountModel = await _appUseCase.callData(
                AccountModel.getInstance(), '/account');
            accountModel.fold((failure) {
              state = AuthState.failed(
                  message:
                      "AccountModelErr:${ExceptionUtil.throwSpecificMessage(failure)}");
            }, (accountModel) {
              state = AuthState.successful(accountModel: accountModel);
            });
          });
        });
      } else {
        mapEventsToState(const GetRequestToken());
      }
    });
  }
}
