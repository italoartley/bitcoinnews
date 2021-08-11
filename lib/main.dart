import 'package:flutter/material.dart';
import 'package:bitcoinnews/pages/login/login_page.dart';
import 'package:bitcoinnews/pages/views/principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BitcoinNews',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Principal(),
      },
    );
  }
}
