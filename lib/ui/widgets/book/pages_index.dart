import '../../../bootstrap/loader.dart';

// class PagesIndex extends StatelessWidget {
//   const PagesIndex({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Tooltip(
//       message: 'إنتقال إلى صفحة',
//       child: FlatButton(
//         onPressed: showSheetWithoutListSwadi,
//         child: Icon(
//           MdiIcons.bookOpen,
//           color: lineColor,
//           size: heading2,
//         ),
//       ),
//     );
//   }
// }

class PagesIndex extends StatefulWidget {
  @override
  _PagesIndexState createState() => _PagesIndexState();
}

class _PagesIndexState extends State<PagesIndex> {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'إنتقال إلى صفحة',
      child: FlatButton(
        onPressed: _showSheetWithoutListSwadi,
        child: Icon(
          MdiIcons.bookOpen,
          color: lineColor,
          size: heading2,
        ),
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
          // SharedPreferences myPrefs = await SharedPreferences.getInstance();
          // myPrefs.setInt('last_page', i);
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
