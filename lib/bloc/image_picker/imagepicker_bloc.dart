import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/image_picker/imagepicker_event.dart';
import 'package:bloc_state_management/bloc/image_picker/imagepicker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent,ImagePickerState>{
  ImagePickerBloc():super(ImagePickerState()){
    on<CameraImageEvent>(_pickFromCamera);
    on<GalleryImageEvent>(_pickFromGalley);
  }

  void _pickFromGalley(GalleryImageEvent event,Emitter<ImagePickerState> emit){
emit(state.copyWith());



}

  void _pickFromCamera(CameraImageEvent event,Emitter<ImagePickerState> emit){
    emit(state.copyWith());


}



}