import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

showCupeDialog(BuildContext context) {
  CupertinoAlertDialog alert = CupertinoAlertDialog(
    title: Text('Gay?'),
    actions: [
      CupertinoDialogAction(
        child: Text('OK'),
        onPressed: () {
          print("ok");
          Navigator.pop(context);
        },
      ),
      CupertinoDialogAction(
        isDestructiveAction: true,
        child: Text('Cancel'),
        onPressed: () {
          print("cancel");
          Navigator.pop(context);
        },
      ),
    ],
  );

  return showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
