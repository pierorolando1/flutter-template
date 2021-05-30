import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_samples_by_pierorolando1/pages/bottomNavPage.dart';
import 'package:flutter_samples_by_pierorolando1/pages/drawerPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (BuildContext context) => HomePage(),
        "/bottom": (BuildContext context) =>
            BottomNavigationBarAndAlertCupertinoExample(),
        "/drawe": (BuildContext context) => new CustomDrawerPage()
      },
      initialRoute: "/",
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CupertinoButton.filled(
                child: Text("Bottom Navigation Bar and ios alert"),
                onPressed: () => goTo(
                  context,
                  BottomNavigationBarAndAlertCupertinoExample(),
                ),
              ),
              CupertinoButton.filled(
                child: Text("Custom drawer"),
                onPressed: () => goTo(
                  context,
                  new CustomDrawerPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goTo(BuildContext context, Widget page) {
    Navigator.of(context).push(
      new CupertinoPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }
}
