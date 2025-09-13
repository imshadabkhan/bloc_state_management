import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/slider_app/slider_event.dart';
import 'package:bloc_state_management/bloc/slider_app/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState()) {
    on<SliderMovement>(_slider);
  }

  void _slider(SliderMovement event, Emitter<SliderState> emit) {
    emit(state.copyWith(newValue:event.sliderValue));
  }
}
