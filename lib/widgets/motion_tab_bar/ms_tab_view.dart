// ByMusthyr ; motion_tab_bar: ^0.1.5
import 'package:flutter/material.dart';
// import 'package:motion_tab_bar/MotionTabController.dart';
// import 'package:motion_tab_bar/MotionTabBarView.dart';

import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/TabItem.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class MsTabView extends StatefulWidget {
  final MotionTabController tabController;

  MsTabView({Key key, @required this.tabController}) : super(key: key);

  @override
  _MsTabViewState createState() => _MsTabViewState(tabController);
}

class _MsTabViewState extends State<MsTabView> with TickerProviderStateMixin {

  MotionTabController _tabController;
 _MsTabViewState(this._tabController);  //constructor

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
    return MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              child: Center(
                child: Text("Account"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Home"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Dashboard"),
              ),
            ),
          ],
        );
  }
}