import '../../../bootstrap/loader.dart';

class ShareCurrentPage extends StatelessWidget {
  const ShareCurrentPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'مشاركة الصفحة الحالية',
      child: FlatButton(
        onPressed: () {},
        child: Icon(
          MdiIcons.shareCircle,
          color: lineColor,
          size: heading2,
        ),
      ),
    );
  }
}
