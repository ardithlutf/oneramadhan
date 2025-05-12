import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'im_feeling_event.dart';
part 'im_feeling_state.dart';
part 'im_feeling_bloc.freezed.dart';

class ImFeelingBloc extends Bloc<ImFeelingEvent, ImFeelingState> {
  ImFeelingBloc() : super(const ImFeelingState.initial()) {
    on<ImFeelingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
