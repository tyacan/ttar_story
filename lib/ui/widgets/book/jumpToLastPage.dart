import '../../../bootstrap/loader.dart';

class JumpToLastPage extends StatelessWidget {
  const JumpToLastPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
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
    );
  }
}
