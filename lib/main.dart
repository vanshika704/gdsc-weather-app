import 'package:flutter/material.dart';
import 'package:gdscweatherapp/GetStarted.dart';

void main() {//......
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WEATHER APP',
      home: GetStarted(),
    );
  }
}
