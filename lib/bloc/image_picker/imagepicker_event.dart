import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable{

}

class CameraImageEvent extends ImagePickerEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GalleryImageEvent extends ImagePickerEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();


}