import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:zoolife_2/models/bottom_apptab.dart';

import 'bottom_tabbar_event.dart';


class BottomTabBarBloc extends Bloc<BottomTabEvent, BottomAppTab> {
  BottomTabBarBloc() : super(BottomAppTab.main);

  @override
  Stream<BottomAppTab> mapEventToState(BottomTabEvent event) async* {
    if (event is BottomTabUpdatedEvent) {
      yield event.tab;
    }
  }
}