// ByMuathye; call it as : handleClickMe(context)
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './../../bootstrap/loader.dart';

Future<void> handleClickMe(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text('نجاح'),
        content: Column(
          children: <Widget>[
            Container(
              child: CircleAvatar(
                radius: 70,
                child: ClipOval(
                  child: Image.asset(
                    profileImage,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
        actions: <Widget>[
          CupertinoDialogAction(
              child: Text('Discard'),
              isDestructiveAction: true,
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop("Discard");
              }),
          CupertinoDialogAction(
            child: Icon(
              MdiIcons.thumbUp,
            ),
            onPressed: () {},
          ),
        ],
      );
    },
  );
}
