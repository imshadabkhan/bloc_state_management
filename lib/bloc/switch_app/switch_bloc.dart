import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/switch_app/switch_event.dart';
import 'package:bloc_state_management/bloc/switch_app/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent,SwitchStates>{
  SwitchBloc():super(SwitchStates(isTrue: false)){
    on<SwitchEnableAndDisable>(_flipSwitchValue);
  }

   void _flipSwitchValue(
      SwitchEnableAndDisable event,Emitter<SwitchStates> emit){
    emit(state.copyWith(isTrue: !state.isTrue));

  }



}