import '../../../bootstrap/loader.dart';

class JumpToNextPage extends StatelessWidget {
  const JumpToNextPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
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
    );
  }
}