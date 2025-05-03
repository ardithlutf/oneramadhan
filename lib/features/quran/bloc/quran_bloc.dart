import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_event.dart';
part 'quran_state.dart';
part 'quran_bloc.freezed.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  QuranBloc() : super(const QuranState.initial()) {
    on<QuranEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
