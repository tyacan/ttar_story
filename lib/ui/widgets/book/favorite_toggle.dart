import '../../../bootstrap/loader.dart';

class FavoriveToggle extends StatelessWidget {
  const FavoriveToggle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
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
    );
  }
}