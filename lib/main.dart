import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lesson3/screens/login/auth_screen.dart';
import 'package:lesson3/navigation_bar/nav_bar.dart';
import 'package:lesson3/screens/splash_screen.dart';

import 'generated/l10n.dart';

void main() {
  runApp( const MyApp());
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
        '/splash_screen' : (context) => const SplashScreen(),
        '/auth_screen': (context) => const Auth(),
        '/auth_screen/nav_bar': (context) => const NavBar(),
      },
      initialRoute: '/splash_screen',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ru', 'RU'),
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
