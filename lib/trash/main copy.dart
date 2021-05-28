// TODO: make tabBar as file
// ByMusthyr ; motion_tab_bar: ^0.1.5
// import 'package:flutter/cupertino.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import './pages/profile/mian.dart';
// import 'package:flutter/material.dart';
// import 'package:motion_tab_bar/MotionTabBarView.dart';
// import 'package:motion_tab_bar/MotionTabController.dart';
// import 'package:motion_tab_bar/motiontabbar.dart';
// import './widgets/pdf_view.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
//   MotionTabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = MotionTabController(initialIndex: 1, vsync: this);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         theme: ThemeData(
//           textTheme: GoogleFonts.tajawalTextTheme(),
//           primaryColor: Colors.white,
//         ),
//         home: Scaffold(
//             // body: PDFView(
//             //   pdfPath: 'assets/ttar_story.pdf',
//             // ),
//             bottomNavigationBar: MotionTabBar(
//               labels: ["عن التطبيق", "قراءة", "الفهرس"],
//               initialSelectedTab: "قراءة",
//               tabIconColor: Colors.green,
//               tabSelectedColor: Colors.deepOrange,
//               onTabItemSelected: (int value) {
//                 print(value);
//                 setState(() {
//                   _tabController.index = value;
//                 });
//               },
//               icons: [FontAwesomeIcons.user, FontAwesomeIcons.bookReader, Icons.menu],
//               textStyle: TextStyle(color: Colors.deepOrange),
//             ),
//             body: MotionTabBarView(
//               controller: _tabController,
//               children: <Widget>[
//                 Container(
//                   child: profileView(),
//                 ),
//                 Container(
//                   child: PDFView(
//                     pdfPath: 'assets/ttar_story.pdf',
//                   ),
//                 ),
//                 Container(
//                   child: Center(
//                     child: Text("Dashboard",style: GoogleFonts.mcLaren(),),
//                   ),
//                 ),
//               ],
//             )),
//       );
// }
