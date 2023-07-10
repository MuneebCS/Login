import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontFamily: 'My4',
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          headline2: TextStyle(
            fontSize: 20,
            fontFamily: 'My4',
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          headline3: TextStyle(
            fontSize: 18,
            fontFamily: 'My4',
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      title: "Login",
      home: HomePage(),
    );
  }
}
