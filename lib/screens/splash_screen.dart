import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lesson3/constants/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed('/auth_screen');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.images.bgImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(AppAssets.images.logo),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(AppAssets.images.morty),
                ),
                Expanded(
                  child: Image.asset(AppAssets.images.rick),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
