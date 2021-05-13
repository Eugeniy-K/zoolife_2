import 'package:equatable/equatable.dart';
import 'package:zoolife_2/models/bottom_apptab.dart';


abstract class BottomTabEvent extends Equatable {
  const BottomTabEvent();
}

class BottomTabUpdatedEvent extends BottomTabEvent {
  final BottomAppTab tab;

  const BottomTabUpdatedEvent(this.tab);

  @override
  List<Object> get props => [tab];

  @override
  String toString() => 'TabUpdated { tab: $tab }';
}

class AddTabToListEvent extends BottomTabEvent {
  final BottomAppTab tab;
  AddTabToListEvent(this.tab);

  @override
  List<Object?> get props => [tab];
}

class DeleteTabFromList extends BottomTabEvent {

  @override
  List<Object?> get props => [];
}