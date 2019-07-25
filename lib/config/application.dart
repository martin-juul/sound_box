/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:fluro/fluro.dart';
import 'package:sound_box/config/routes.dart';

class Application {
  static Router router;

  void setup() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }
}
