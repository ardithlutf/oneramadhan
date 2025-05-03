import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mainscreen_event.dart';
part 'mainscreen_state.dart';
part 'mainscreen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainscreenEvent, MainscreenState> {
  MainScreenBloc() : super(const MainscreenState()) {
    on<MainscreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
