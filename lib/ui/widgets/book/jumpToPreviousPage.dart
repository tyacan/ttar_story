import '../../../bootstrap/loader.dart';

class JumpToPreviousPage extends StatelessWidget {
  const JumpToPreviousPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
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
    );
  }
}

