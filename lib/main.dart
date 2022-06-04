import 'package:flutter/material.dart';
import 'package:lesson3/auth_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/auth_screen': (context) => const Auth(),
        '/auth_screen/home_screen': (context) => const MyHomePage(
              title: 'Home',
            ),
      },
      initialRoute: '/auth_screen',
    );
  }
}
