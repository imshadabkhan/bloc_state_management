import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/todo_app/todo_event.dart';
import 'package:bloc_state_management/bloc/todo_app/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState()) {
    on<AddTask>(addTaskToList);
    on<RemoveTask>(removeTaskFromList);
  }
  final List<String> updatedList=[];

   addTaskToList(AddTask event, Emitter<TodoState> emit) {
    updatedList.add(event.newTask);
    emit(state.copyWith(todoTaskList: List.from(updatedList)));
  }

  void removeTaskFromList(RemoveTask event, Emitter<TodoState> emit) {
     updatedList.removeAt(event.removalIndex);
     emit(state.copyWith(todoTaskList:List.from(updatedList)));
  }
}
