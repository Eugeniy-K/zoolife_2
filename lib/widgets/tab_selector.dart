import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zoolife_2/models/tab_item.dart';
import 'package:zoolife_2/widgets/root_widget.dart';

import '../theme.dart';


class TabSelector extends StatefulWidget {
  final List<TabItem> tabs;
  final ValueChanged<int> onSelectTab;

  TabSelector({
    Key? key,
    required this.tabs,
    required this.onSelectTab,
  }) : super(key: key);

  @override
  _TabSelectorState createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: theme.accentColor,
      unselectedItemColor: theme.disabledColor,
      backgroundColor: theme.primaryColorDark,
      currentIndex: RootWidgetState.currentTab,
      items: widget.tabs
          .map(
            (e) => _buildItem(
          index: e.getIndex(),
          icon: e.icon,
          tabName: e.tabName,
        ),
      ).toList(),
      onTap:
      //     (index) {setState(() {
      //     widget.onSelectTab(index,);
      //   });
      // }
          (index) {
        widget.onSelectTab(index,);}
    );
  }

  BottomNavigationBarItem _buildItem(
      {int? index, IconData? icon, String? tabName}) {
    return BottomNavigationBarItem(

      icon: Icon(
        icon,
        // color: _tabColor(index: index),
      ),
      label: tabName!,
    );
  }

  Color _tabColor({int? index}) {
    return RootWidgetState.currentTab == index ? theme.accentColor
        : theme.disabledColor;
  }
}