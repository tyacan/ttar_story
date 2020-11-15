// ByMusthyr ; motion_tab_bar: ^0.1.5
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class MsTabBar extends StatefulWidget {
  final MotionTabController tabController;

  MsTabBar({Key key, @required this.tabController}) : super(key: key);

  @override
  _MsTabBarState createState() => _MsTabBarState(tabController);
}

class _MsTabBarState extends State<MsTabBar> with TickerProviderStateMixin {
  MotionTabController _tabController;
 _MsTabBarState(this._tabController);  //constructor

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
          labels: ["Account", "Home", "Dashboard"],
          initialSelectedTab: "Home",
          tabIconColor: Colors.green,
          tabSelectedColor: Colors.deepOrange,
          onTabItemSelected: (int value) {
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [Icons.account_box, Icons.home, Icons.menu],
          textStyle: TextStyle(color: Colors.deepOrange),
        );
  }
}