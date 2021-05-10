import 'package:flutter/material.dart';
import 'package:prueba_flutter_ideati/page/home/Ui/home.dart';

class Routes {
  static getRoutes({BuildContext context}) {
    return {
      '/': (BuildContext context) => Home(),
    };
  }
}


