import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gachonbus/Strings.dart';
import 'package:gachonbus/infoRoute.dart';
import 'package:gachonbus/timelineRoute.dart';
import 'package:gachonbus/timetableRoute.dart';

void main() {
  runApp(new mainWidget());
}

class mainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.applicationTitle,
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: new mainHome(title: 'Strings.applicationTitle'),
    );
  }
}

class mainHome extends StatefulWidget {
  mainHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _mainHomeState createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget> [
    new Center(
      child: new timelineRoute(),
    ),
    new Center(
      child: new timetableRoute(),
    ),
    new Center(
      child: new infoRoute(),
    )
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(Strings.applicationTitle),
        ),
        body: new Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: new BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.airport_shuttle),
                title: Text(Strings.timelineTitle),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                title: Text(Strings.timetableTitle),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                title: Text(Strings.infoTitle),
              )
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.lightBlueAccent,
            onTap: _onItemTapped,
        )
    );
  }
}