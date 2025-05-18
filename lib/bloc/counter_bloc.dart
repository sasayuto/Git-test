import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<IncrementCounter>((event, emit) {
      final newCount = state.counter + 1;
      emit(state.copyWith(
        counter: newCount,
        message: newCount >= 10 ? "10以上になりました！" : null,
      ));
    });

    on<DecrementCounter>((event, emit) {
      final newCount = state.counter - 1;
      emit(state.copyWith(
        counter: newCount,
        message: newCount >= 10 ? "10以上になりました！" : null,
      ));
    });

    on<ResetCounter>((event, emit) {
      emit(CounterState(counter: 0));
    });
  }
}
