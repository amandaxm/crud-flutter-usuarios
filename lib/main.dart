import 'package:crud_usuario/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
        ),
        backgroundColor: Colors.grey,
        canvasColor: Colors.transparent,
      ),
      home: HomeScreen(),
    );
  }
}
