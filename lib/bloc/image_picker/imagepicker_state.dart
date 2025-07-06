import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
  XFile? myFile;

  ImagePickerState({this.myFile});
  ImagePickerState copyWith({XFile? myFile}) {
    return ImagePickerState(myFile: myFile ?? this.myFile);
  }
}
