import 'package:bloc_state_management/bloc/todo_app/todo_bloc.dart';
import 'package:bloc_state_management/bloc/todo_app/todo_event.dart';
import 'package:bloc_state_management/bloc/todo_app/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({super.key});

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(onPressed: () {
            context.read<TodoBloc>().add(
                AddTask(newTask: textController.text.toString()));
            textController.clear();
          }, child: Icon(Icons.add),),


      appBar: AppBar(title: Text('Todo App'),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [

            TextField(
              controller: textController,

            ),
            SizedBox(height: 20,),
            BlocBuilder<TodoBloc, TodoState>(
              builder: (context, state) {
                if (state.todoTaskList!.isNotEmpty) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.todoTaskList!.length,
                      itemBuilder: (context, index) =>
                          ListTile(
                            title: Text(state.todoTaskList![index].toString()),
                            trailing: InkWell(
                                onTap: () {
                                  context.read<TodoBloc>().add(
                                      RemoveTask(removalIndex: index));
                                },
                                child: Icon(Icons.delete, color: Colors.red,)),
                          ),),
                  );
                } else {
                  return Center(child: Text("No Todo Task"));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
