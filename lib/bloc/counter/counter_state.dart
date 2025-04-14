import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [countDigit];

  final int countDigit;
  const CounterState({this.countDigit = 0});
  CounterState copyWith({int? newCountDigit}) {
    return CounterState(countDigit: newCountDigit ?? countDigit);
  }
}
