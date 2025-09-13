import 'package:equatable/equatable.dart';

class SwitchStates extends Equatable{
  final bool isTrue;
  SwitchStates({this.isTrue=false});



  SwitchStates copyWith({bool? isTrue}){
    return SwitchStates(isTrue: isTrue ?? this.isTrue);

}

  @override
  // TODO: implement props
  List<Object?> get props => [isTrue];

}