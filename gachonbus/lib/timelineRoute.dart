import 'package:flutter/material.dart';

class timelineRoute extends StatefulWidget {
  timelineRoute({Key key}) : super(key: key);

  @override
  _timelineRouteState createState() => _timelineRouteState();
}

class _timelineRouteState extends State<timelineRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("TimeLine!"),
          ],
        )
      )
    );
  }
}
