import 'package:sound_box/screens/player/player_screen.dart';

import 'package:sound_box/themes/colors.dart';
import '../screens/home/home_screen.dart';
import 'package:flutter/painting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomeScreen();
});

var playListsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PlayerScreen();
});

var playerHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PlayerScreen();
});
