import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shalat_event.dart';
part 'shalat_state.dart';
part 'shalat_bloc.freezed.dart';

class ShalatBloc extends Bloc<ShalatEvent, ShalatState> {
  ShalatBloc() : super(const ShalatState.initial()) {
    on<ShalatEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
