import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable{




}

class SliderMovement extends SliderEvent{
  SliderMovement({required this.sliderValue});
  double? sliderValue;
  @override

  List<Object?> get props => [sliderValue ];


}