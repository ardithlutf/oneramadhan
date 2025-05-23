import 'dart:async';

import 'package:oneramadhan/data/user/remote/user_repo.dart';
import 'package:oneramadhan/generated/l10n.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

import '../../../configs/app_config.dart';

part 'application_event.dart';
part 'application_state.dart';
part 'application_bloc.freezed.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  late LocalStorageService _localStorageService;
  late UserRepository _repo;

  ApplicationBloc({
    required LocalStorageService localStorageService,
    required UserRepository repo,
  }) : super(const ApplicationState()) {
    _localStorageService = localStorageService;
    _repo = repo;
    on<_ApplicationLoadedEvent>(_onLoaded);
    on<_LocaleChangedEvent>(_onLocaleChanged);
    on<_DarkModeChangedEvent>(_onDarkModeChanged);
  }

  FutureOr<void> _onLoaded(
    _ApplicationLoadedEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    emit(state.copyWith(
      status: UIStatus.loading,
    ));

    final String locale = _localStorageService.locale;
    final bool isDarkMode = _localStorageService.isDarkMode;

    // TODO: API CALL
    try {
      final User user = await _repo.getUser();

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        locale: locale,
        isDarkMode: isDarkMode,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: UIStatus.loadFailed,
        locale: locale,
        isDarkMode: isDarkMode,
      ));
    }
  }

  FutureOr<void> _onLocaleChanged(
    _LocaleChangedEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.locale != event.locale) {
      emit(state.copyWith(
        status: UIStatus.loading,
      ));
      await S.load(Locale(event.locale));

      _localStorageService.setLocale(event.locale);

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        locale: event.locale,
      ));
    }
  }

  FutureOr<void> _onDarkModeChanged(
    _DarkModeChangedEvent event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.isDarkMode != event.enable) {
      emit(state.copyWith(
        status: UIStatus.loading,
      ));

      _localStorageService.setIsDarkMode(event.enable);

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        isDarkMode: event.enable,
      ));
    }
  }
}
