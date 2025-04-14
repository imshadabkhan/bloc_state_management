import 'package:equatable/equatable.dart';
abstract class SliderEvents extends Equatable{
  const SliderEvents();

}

class EnableOrDisableNotificationEvent extends SliderEvents{
  @override
  List<Object?> get props=>[

  ];
}

class DynamicSliderEvent extends SliderEvents{
  double? sliderValue;
  DynamicSliderEvent(this.sliderValue);

  @override
  // TODO: implement props
  List<Object?> get props => [


  ];



}