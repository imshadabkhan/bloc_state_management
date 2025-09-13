import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_state_management/bloc/image_picker/image_picker_state.dart';
import 'package:bloc_state_management/utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils) : super(ImagePickerState()) {
    on<CaptureImageCamera>(_cameraImagePicker);
  }

  _cameraImagePicker(
      CaptureImageCamera event, Emitter<ImagePickerState> emit) async {
    emit(state.copyWith(file: await imagePickerUtils.imageFromCamera()));
  }
}
