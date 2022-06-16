import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson3/constants/app_assets.dart';
import 'package:lesson3/generated/l10n.dart';

import '../screens/home_screen.dart';
import '../screens/person_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedPage = 0;

  void onSelectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    PersonScreen(),
    MyHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: _selectedPage == 0
                  ? const Color.fromRGBO(68, 167, 184, 1)
                  : const Color.fromRGBO(144, 153, 170, 1),
            ),
            label: S.of(context).persons,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.svg.settingsIcon,
              color: _selectedPage == 1
                  ? const Color.fromRGBO(68, 167, 184, 1)
                  : const Color.fromRGBO(144, 153, 170, 1),
            ),
            label: S.of(context).settings,
          ),
        ],
        onTap: onSelectPage,
      ),
    );
  }
}
