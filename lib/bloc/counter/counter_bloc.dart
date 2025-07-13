import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/counter/counter_event.dart';
import 'package:bloc_state_management/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterStates> {
  CounterBloc() : super(const CounterStates()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
