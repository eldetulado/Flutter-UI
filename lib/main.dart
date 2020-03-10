import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge/pages/first_page.dart';
import 'package:flutter_challenge/pages/second_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(0.0),
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: 'second',
      routes: {
        'first': (_) => FirstPage(),
        'second': (_) => SecondPage(),
      },
    );
  }
}
