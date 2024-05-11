import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mainscreen_event.dart';
part 'mainscreen_state.dart';
part 'mainscreen_bloc.freezed.dart';

class MainscreenBloc extends Bloc<MainscreenEvent, MainscreenState> {
  MainscreenBloc() : super(const MainscreenState.initial()) {
    on<MainscreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
