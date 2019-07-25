import 'dart:async';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/application.dart';

class PlayerScreen extends StatefulWidget {
  @override
  State createState() => PlayerScreenState();
}

class PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    var menuWidgets = <Widget>[
      menuButton(
          context, FontAwesomeIcons.playCircle, "Native Animation", "native"),
    ];

    final size = MediaQuery.of(context).size;
    final childRatio = (size.width / size.height) * 2.5;

    return Container(
      color: Colors.black,
      child: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 35, left: 25),
              child: Image(
                image: AssetImage("assets/icon/icon-2x.png"),
                width: 100.0,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.count(
                  childAspectRatio: childRatio,
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  children: menuWidgets,
                ),
              ),
            ),
//            Padding(
//              padding: EdgeInsets.only(top: 35.0, bottom: 25),
//              child: Center(
//                child: ConstrainedBox(
//                  constraints: BoxConstraints.tightFor(height: 60.0),
//                  child: deepLinkWidget(context),
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }

  // helpers
  Widget menuButton(
      BuildContext context, IconData iconData, String title, String key) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        height: 42.0,
        child: IconButton(
          icon: new Icon(FontAwesomeIcons.playCircle),
          onPressed: () {
            tappedMenuButton(context, key);
          },
        ),
      ),
    );
  }

  // actions
  void tappedMenuButton(BuildContext context, String key) {
  }
}
