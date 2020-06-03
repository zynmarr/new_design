import 'package:flutter/material.dart';
import 'package:message_apps/Screens/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: Menu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
