import 'package:bloc_state_management/bloc/slider/slider_bloc.dart';
import 'package:bloc_state_management/bloc/slider/slider_events.dart';
import 'package:bloc_state_management/bloc/slider/slider_state.dart';
import 'package:flutter/foundation.dart';
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
                Text(
                  'Notification',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                BlocBuilder<SliderBloc, SliderState>(
                  buildWhen: (previous,current)=>previous.value!=current.value,
                  builder: (context, state) {
                    if (kDebugMode) {
                      print("I am Switch");
                    }
                    return Switch(
                        value: state.value,
                        onChanged: (newValue) {
                          context
                              .read<SliderBloc>()
                              .add(EnableOrDisableNotificationEvent());
                        });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<SliderBloc, SliderState>(

              builder: (context, state) {
                if (kDebugMode) {
                  print("i am container");
                }

                return Container(
                  height: 200,
                  width: double.infinity,
                  color:
                      Colors.red.withAlpha((state.sliderValue * 255).toInt()),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<SliderBloc, SliderState>(

              builder: (context, state) {


                return Slider(

                  value: state.sliderValue,
                  onChanged: (value) {
                    context.read<SliderBloc>().add(DynamicSliderEvent(value));
                  });},
            ),
          ],
        ),
      ),
    );
  }
}
