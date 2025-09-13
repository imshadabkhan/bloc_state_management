import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/counter_app/counter_event.dart';
import 'package:bloc_state_management/bloc/counter_app/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc():super(CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment( IncrementCounter event,Emitter<CounterState> emit){
    emit(state.copyWith(counterValue: state.counterValue! +1));

  }

   void _decrement(DecrementCounter event,Emitter<CounterState>emit){
   return  state.counterValue!=0?emit(state.copyWith(counterValue: state.counterValue! -1),):null;
  }



}