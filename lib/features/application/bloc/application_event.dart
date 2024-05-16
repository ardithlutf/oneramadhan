part of 'application_bloc.dart';

@Freezed()
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.loaded() = _ApplicationLoadedEvent;
  const factory ApplicationEvent.localeChanged({
    required String locale,
  }) = _LocaleChangedEvent;
  const factory ApplicationEvent.darkModeChanged({
    required bool enable,
  }) = _DarkModeChangedEvent;
}
