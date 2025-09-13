import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  TodoEvent();
}

class AddTask extends TodoEvent {
  String newTask;
  AddTask({required this.newTask});
  @override
  // TODO: implement props
  List<Object?> get props => [newTask];
}

class RemoveTask extends TodoEvent {
  int removalIndex;
  RemoveTask({required this.removalIndex});
  @override
  // TODO: implement props
  List<Object?> get props => [removalIndex];
}
