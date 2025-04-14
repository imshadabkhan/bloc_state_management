import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/slider/slider_events.dart';
import 'package:bloc_state_management/bloc/slider/slider_state.dart';

class SliderBloc extends Bloc<SliderEvents,SliderState>{
  SliderBloc():super(const SliderState()){
    on<EnableOrDisableNotificationEvent>(_switchNotification);
    on<DynamicSliderEvent>(_switchSliderValue);

  }

void _switchNotification(EnableOrDisableNotificationEvent event,Emitter<SliderState> emit){
    emit(state.copyWith(newValue: !state.value),);


}

void _switchSliderValue(DynamicSliderEvent event,Emitter<SliderState> emit){

    emit(state.copyWith(newSliderValue:event.sliderValue ));


}




}