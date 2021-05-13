import 'package:equatable/equatable.dart';
import 'package:zoolife_2/models/bottom_apptab.dart';


abstract class BottomTabState extends Equatable {
  const BottomTabState();
}

class BottomTabUpdated extends BottomTabState {
  // final List<BottomAppTab> tabs;
  final BottomAppTab tabs;

  BottomTabUpdated(this.tabs);

  @override
  List<Object?> get props => [tabs];
}