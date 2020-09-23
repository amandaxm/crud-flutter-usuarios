import 'package:crud_usuario/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const color2 = const Color(0xFFf0f0f5);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto Mono',
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
        ),
        backgroundColor: color2,
        canvasColor: Colors.transparent,
      ),
      home: HomeScreen(),
    );
  }
}
