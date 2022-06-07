import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: _selectedPage,
          children: const [

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                  'assets/library.svg',
                  color: _selectedPage == 0
                      ? const Color.fromRGBO(68, 167, 184, 1)
                      : const Color.fromRGBO(144, 153, 170, 1),
                )),
            label: 'Библиотека',
          ),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset('assets/like.svg',
                      color: _selectedPage == 2
                          ? const Color.fromRGBO(68, 167, 184, 1)
                          : const Color.fromRGBO(144, 153, 170, 1))),
              label: 'Сохраненные'),
          BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset('assets/profile.svg',
                    color: _selectedPage == 3
                        ? const Color.fromRGBO(68, 167, 184, 1)
                        : const Color.fromRGBO(144, 153, 170, 1))),
            label: 'Профиль',
          ),
        ],
        onTap: onSelectPage,
      ),
    );
  }
}
