import '../../../bootstrap/loader.dart';

class JumpToFirstPage extends StatelessWidget {
  const JumpToFirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
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
    );
  }
}
