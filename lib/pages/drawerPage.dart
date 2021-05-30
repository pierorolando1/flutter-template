import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: buildAppBar(context),
        drawer: Drawer(
          elevation: 0,
          semanticLabel: "Hola",
        ),
        body: Center(
          child: Text("Drawer"),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      toolbarOpacity: 0.5,
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(
            CupertinoIcons.text_alignleft,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
    );
  }
}
