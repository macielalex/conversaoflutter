import 'package:br_hidro_flutter/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() =>  runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(42, 93, 60, 1),
      statusBarBrightness: Brightness.dark,
    ));


    return MaterialApp(
      title: "Br Hidraulica",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(42, 93, 60, 1),

      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
    // This is the theme of your application.
  }
}
