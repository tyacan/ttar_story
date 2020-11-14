// ByMauthye ;

import 'package:flutter/material.dart';

//packages
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

// pages
import 'pages/profile/mian.dart';
import 'widgets/pdf_view.dart';

// config
import 'config/sizes.dart';
import 'config/styles.dart';
import 'config/colors.dart';

void main() => runApp(const MyApp());
final key = new GlobalKey<PDFViewState>();

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'قصة التتار',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.tajawalTextTheme(),
      ),
      home: const MyHomePage(title: 'قصة التتار من البداية إلى عين جالوت'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<SharedPreferences> myPrefs = SharedPreferences.getInstance();
  Future<int> current;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      drawer: profileView(),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          PDFView(key: key),
          Positioned(
            top: 0,
            child: SafeArea(
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // color: whiteColor,
                child: Row(
                  children: <Widget>[
                    Tooltip(
                      message: 'إنتقال إلى صفحة',
                      child: FlatButton(
                        onPressed: _showSheetWithoutListSwadi,
                        child: Icon(
                          MdiIcons.bookOpen,
                          color: lineColor,
                          size: heading2,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'إضافة إلى المفضلة',
                      child: FlatButton(
                        onPressed: () {
                          //todo: add current page number to sharedPrefrences to be as favorite page
                          // Check if current page is in list
                          // List listData = await sharedPreferences.currentState.getStringListValue('fav');
                          // if (listData.contains(key.currentState.currentPage()) )
                            // sharedPreferences.currentState.setStringListValue('fav', [key.currentState.currentPage()]);
                            // sharedPreferences.currentState.setStringListValue('fav', ['1']);
                          print('444444444444444444444444444444444444444444444444444444444444'
                            // sharedPreferences.currentState.getStringListValue('fav')
                          );
                          // ();
                          // if not in the list add it
                          // if in the list remove it
                        },
                        child: Icon(
                          // todo: make it outline if not fav.
                          // MdiIcons.bookmarkOutline,
                          MdiIcons.bookmarkOutline,
                          color: lineColor,
                          size: heading2,
                        ),
                      ),
                    ),
                    // ! todo: add share page as image
                    // Tooltip(
                    //   message: 'مشاركة الصفحة الحالية',
                    //   child: FlatButton(
                    //     onPressed: () {
                    //     },
                    //     child: Icon(
                    //       MdiIcons.shareCircle,
                    //       color: lineColor,
                    //       size: heading2,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: whiteColor,
                child: Row(
                  children: <Widget>[
                    Tooltip(
                      message: 'إنتقال إلى الصفحة الأخيرة',
                      child: FlatButton(
                        onPressed: () {
                          key.currentState.animateToPage(424);
                        },
                        child: Icon(
                          MdiIcons.pageFirst,
                          color: lineColor,
                          size: heading2,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'إنتقال إلى الصفحة التالية',
                      child: FlatButton(
                        onPressed: () {
                          key.currentState.nextPage();
                        },
                        child: Icon(
                          MdiIcons.pagePrevious,
                          color: lineColor,
                          size: heading2,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'إنتقال إلى الصفحة السابقة',
                      child: FlatButton(
                        onPressed: () {
                          key.currentState.previousPage();
                        },
                        child: Icon(
                          MdiIcons.pageNext,
                          color: lineColor,
                          size: heading2,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'إنتقال إلى الصفحة الأولى',
                      child: FlatButton(
                        onPressed: () {
                          key.currentState.animateToPage(0);
                        },
                        child: Icon(
                          MdiIcons.pageLast,
                          color: lineColor,
                          size: heading2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// ################################## ##### ##############################
  /// ################################## pages ##############################
  /// ################################## ##### ##############################

  void _showSheetWithoutListSwadi() {
    showStickyFlexibleBottomSheet<void>(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: .8,
      headerHeight: 50,
      context: context,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      headerBuilder: (context, offset) {
        return SafeArea(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(offset == 0.8 ? 0 : 30),
                topRight: Radius.circular(offset == 0.8 ? 0 : 20),
              ),
            ),
            child: Center(
              child: Text(
                'المفضلة',
                style:
                    GoogleFonts.tajawal(color: whiteColor, fontSize: heading4),
              ),
            ),
          ),
        );
      },
      builder: (context, offset) {
        return SliverChildListDelegate(
          _getChildrenSwadi(offset),
        );
      },
      anchors: [.2, 0.5, .8],
    );
  }

  List<Widget> _getChildrenSwadi(double bottomSheetOffset) {
    return <Widget>[
      Text(
        '$bottomSheetOffset',
        style: TextStyle(color: whiteColor),
      ),
      for (var i = 0; i < 424; i += 4) PagesNumbersColumn(count: i)
    ];
  }
}

class PagesNumbersColumn extends StatelessWidget {
  const PagesNumbersColumn({
    Key key,
    int count,
  })  : _count = count,
        super(key: key);
  final int _count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        for (int i in [_count + 1, _count + 2, _count + 3, _count + 4])
          PagesNumbersRow(i)
      ],
    );
  }
}

class PagesNumbersRow extends StatelessWidget {
  PagesNumbersRow(this.i);
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          // * todo: Jump to specified page
          key.currentState.jumpToPage(i);
          SharedPreferences myPrefs = await SharedPreferences.getInstance();
          myPrefs.setInt('last_page', i);
          print(i.toString());
        },
        child: Container(
          width: 40,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: Text(
                i.toString(),
                style: TextStyle(
                  color: i % 2 == 0 ? backgroundColor : whiteColor,
                ),
              ),
            ),
          ),
          decoration: i % 2 == 0 ? usualBoxDecoration : activeBoxDecoration,
        ),
      ),
    );
  }
}

/// ################################## ####### ##############################
/// ################################## ./pages ##############################
/// ################################## ####### ##############################
