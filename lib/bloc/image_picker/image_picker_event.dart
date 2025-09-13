import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable{


}

class CaptureImageCamera extends ImagePickerEvent{
  @override

  List<Object?> get props => [];

}

class CaptureImageGallery extends ImagePickerEvent{
  List<Object?> get props=>[];


}