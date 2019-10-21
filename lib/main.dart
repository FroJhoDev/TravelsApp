import 'package:flutter/material.dart';

import 'package:travels_app/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travels App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(37, 22, 59, 1),
        accentColor: Color.fromRGBO(255, 0, 55, 1),
      ),
      home: HomeTabs(),
    );
  }
}
