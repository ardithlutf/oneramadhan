part of 'mainscreen_bloc.dart';

@Freezed()
class MainscreenState with _$MainscreenState {
  const factory MainscreenState({
    @Default(UIStatus.loading) UIStatus status,
    @Default('en') String locale,
    @Default(false) bool isDarkMode,
  }) = _Initial;
}

enum UIStatus {
  initial,
  loading,
  loadSuccess,
  loadFailed,
}
