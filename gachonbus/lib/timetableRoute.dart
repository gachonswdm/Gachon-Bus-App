import 'package:flutter/material.dart';

class timetableRoute extends StatefulWidget {
  timetableRoute({Key key}) : super(key: key);

  @override
  _timetableRouteState createState() => _timetableRouteState();
}

class _timetableRouteState extends State<timetableRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("TimeTable!"),
              ],
            )
        )
    );
  }
}
