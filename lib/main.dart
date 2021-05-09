import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prueba_flutter_ideati/page/home/Ui/home.dart';
import 'package:prueba_flutter_ideati/routes.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      saveLocale: true,
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('es', 'ES'),
        Locale('es', 'CO')
      ],
    ),
  );
}

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {
        '/': (BuildContext context) {
          return Home();
        },
        ...Routes.getRoutes(context: context)
      },
    );
  }
}
