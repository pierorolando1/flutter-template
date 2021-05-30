import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers_cupertino.dart';

class BottomNavigationBarAndAlertCupertinoExample extends StatefulWidget {
  @override
  _BottomNavigationBarAndAlertCupertinoExampleState createState() =>
      _BottomNavigationBarAndAlertCupertinoExampleState();
}

class _BottomNavigationBarAndAlertCupertinoExampleState
    extends State<BottomNavigationBarAndAlertCupertinoExample> {
  int _currentIndex = 0;
  final List<Widget> _screens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNavBar(context),
      body: Stack(
        children: [
          Container(
            color: Colors.blueAccent,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.pinkAccent,
            width: double.infinity,
            height: 180,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton.filled(
                  child: Text('Open'),
                  onPressed: () => showCupeDialog(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Theme customBottomNavBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (e) => setState(() {
          _currentIndex = e;
        }),
        selectedItemColor: Colors.pinkAccent,
        type:
            BottomNavigationBarType.fixed, //that is for mora than 4 items works
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone_callback_outlined,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
            ),
            title: Container(),
          )
        ],
      ),
    );
  }
}
