import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();

  List<Object> get props => [];
}

class SwitchEnableAndDisable extends SwitchEvent {}
