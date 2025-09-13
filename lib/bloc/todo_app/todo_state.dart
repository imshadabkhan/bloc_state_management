import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  List<String?>? todoTaskList;
  TodoState({this.todoTaskList = const []});
  TodoState copyWith({List<String?>? todoTaskList}) {
    return TodoState(todoTaskList: todoTaskList ?? this.todoTaskList);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [todoTaskList];
}
