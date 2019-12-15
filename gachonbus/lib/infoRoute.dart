import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class infoRoute extends StatefulWidget {
  infoRoute({Key key}) : super(key: key);

  @override
  _infoRouteState createState() => _infoRouteState();
}

class _infoRouteState extends State<infoRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.info),
              title: Text("개발자 정보"),
              subtitle: Text("개발자 정보를 확인합니다."),
              onTap: () => _launchURL("https://github.com/gachonswdm"),
            ),
            ListTile(
              leading: Icon(Icons.thumbs_up_down),
              title: Text("평가하기"),
              subtitle: Text("가천버스를 평가합니다."),
              onTap: () => Fluttertoast.showToast(
                msg: "별점 5점 Plz~~",
              ),
            )
          ],
        )
      )
    );
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
    else {
      throw 'Can\'t Launch URL - $url';
    }
  }
}
