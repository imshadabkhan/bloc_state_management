import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  final bool value;
  final double sliderValue;
  const SliderState({this.value = false,this.sliderValue=0.0});
  SliderState copyWith({bool? newValue,double? newSliderValue}){
    return SliderState(value: newValue ?? value,sliderValue: newSliderValue??sliderValue);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [value,sliderValue];
}
