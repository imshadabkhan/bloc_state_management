import 'dart:io';

import 'package:bloc_state_management/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_state_management/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_state_management/bloc/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerUi extends StatelessWidget {
  const ImagePickerUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capture Image'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<ImagePickerBloc, ImagePickerState>(
            builder: (context, state){
              if (state.file == null) {
                return
                InkWell(
                  onTap: () {
                    context.read<ImagePickerBloc>().add(CaptureImageCamera());
                  },
                  child: CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.camera),
                  ),
                );
              } else {
                return Center(
                    child: Image.file(File(state.file!.path.toString(),),),);
              }
            },
          ),
        ],
      ),
    );
  }
}
