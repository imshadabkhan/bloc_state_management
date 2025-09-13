import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  double sliderValue;
  SliderState({this.sliderValue = 0.5});

  @override
  // TODO: implement props
  List<Object?> get props => [sliderValue];

  SliderState copyWith({double? newValue}) {
    return SliderState(sliderValue: newValue ?? sliderValue);
  }
}
