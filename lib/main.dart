import 'package:bloc_state_management/bloc/counter_app/counter_bloc.dart';
import 'package:bloc_state_management/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_state_management/bloc/slider_app/slider_bloc.dart';
import 'package:bloc_state_management/bloc/switch_app/switch_bloc.dart';
import 'package:bloc_state_management/bloc/todo_app/todo_bloc.dart';
import 'package:bloc_state_management/ui/image_picker_ui.dart';
import 'package:bloc_state_management/ui/slider_screen.dart';
import 'package:bloc_state_management/ui/todo_screen.dart';
import 'package:bloc_state_management/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>SwitchBloc()),
        BlocProvider(create: (_)=>SliderBloc()),
        BlocProvider(create: (_)=>ImagePickerBloc(ImagePickerUtils())),
        BlocProvider(create: (_)=>TodoBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const CounterScreen(),
        home: TodoScreen(),
      ),
    );
  }
}
