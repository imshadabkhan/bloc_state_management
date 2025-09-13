import 'package:bloc_state_management/bloc/counter_app/counter_bloc.dart';
import 'package:bloc_state_management/bloc/counter_app/counter_event.dart';
import 'package:bloc_state_management/bloc/counter_app/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget{
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            BlocBuilder<CounterBloc,CounterState>(builder: (context,state)=>Center(
              child: Text(state.counterValue.toString(),style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30),),
            ),),
                        SizedBox(
              height: 30,
            ),


            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementCounter());
                    },
                    child: Text('Increment'),
                  ),
                ),

                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      context.read<CounterBloc>().add(DecrementCounter());
                    },
                    child: Text('Decrement'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
