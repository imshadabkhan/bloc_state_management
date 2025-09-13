import 'package:bloc_state_management/bloc/slider_app/slider_bloc.dart';
import 'package:bloc_state_management/bloc/slider_app/slider_event.dart';
import 'package:bloc_state_management/bloc/slider_app/slider_state.dart';
import 'package:bloc_state_management/bloc/switch_app/switch_bloc.dart';
import 'package:bloc_state_management/bloc/switch_app/switch_event.dart';
import 'package:bloc_state_management/bloc/switch_app/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Slider App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<SwitchBloc, SwitchStates>(

                                    builder: (context, state) => Text(
                    'Notification: ${state.isTrue == true ? 'ON' : 'OFF'}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                BlocBuilder<SwitchBloc, SwitchStates>(
                  builder: (context, state) {
                    return Switch(
                        value: state.isTrue,
                        onChanged: (newValue) {
                          context
                              .read<SwitchBloc>()
                              .add(SwitchEnableAndDisable());
                          print(state);
                        });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<SliderBloc,SliderState>(builder: (context,state)=> Container(
              height: 200,
              width: double.infinity,
              color: Colors.red.withAlpha((state.sliderValue* 255).toInt()),
            ),),

            const SizedBox(
              height: 20,
            ),

      BlocBuilder<SliderBloc,SliderState>(
        builder:(context,state)=>Slider(value: state.sliderValue, onChanged: (value) {
         context.read<SliderBloc>().add(SliderMovement(sliderValue: value));
         print(state.sliderValue);
        }),


      )

          ],
        ),
      ),
    );
  }
}
