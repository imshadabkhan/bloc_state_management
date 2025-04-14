import 'package:equatable/equatable.dart';

abstract class CounterEvents extends Equatable{


}

class  IncrementEvent extends CounterEvents{
  @override
  // TODO: implement props
  List<Object?> get props => [];



}

class DecrementEvent extends CounterEvents{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();



}

