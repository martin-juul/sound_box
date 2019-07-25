import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sound_box/config/application.dart';

import 'config/routes.dart';
import 'screens/home/home_screen.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int currentRouteIndex;

  Map<int, String> tabRoutes = {
    0: Routes.home,
    2: Routes.library,
    3: Routes.playLists,
  };

  AppState() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: BottomNavyBar(
        onItemSelected: (routeIndex) => setState(() {
          this.currentRouteIndex = routeIndex;
          this.navigateTo(context, routeIndex);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(FontAwesomeIcons.clipboardList), title: Text('Library'), activeColor: Colors.purpleAccent),
          BottomNavyBarItem(icon: Icon(FontAwesomeIcons.list), title: Text('Playlists'), activeColor: Colors.pink),
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.cog),
            title: Text('Settings'),
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    // return a widget representing a page
  }

  void navigateTo(BuildContext context, int index) {
    String route = this.tabRoutes[index];
    Application.router.navigateTo(context, route);
  }
}
