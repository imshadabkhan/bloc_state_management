import 'package:flutter/material.dart';

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
        Switch(
            value: false,
            onChanged: (newValue) {

            }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
        Container(
          height: 200,
          width: double.infinity,
          color:
          Colors.red.withAlpha((0.5 * 255).toInt()),
        ),
            const SizedBox(
              height: 20,
            ),
        Slider(

            value: 0,
            onChanged: (value) {

            }),
          ],
        ),
      ),
    );
  }
}
