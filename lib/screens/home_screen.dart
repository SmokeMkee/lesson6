import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).homePage),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).language.toString() + ' : '),
                DropdownButton<String>(
                  value: Intl.getCurrentLocale(),
                  items: [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text(
                        S.of(context).english,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'ru_RU',
                      child: Text(
                        S.of(context).russian,
                      ),
                    ),
                  ],
                  onChanged: (value) async {
                    if (value == 'ru_RU') {
                      await S.load(
                        const Locale('ru', 'RU'),
                      );
                      setState(() {});
                    } else if (value == 'en') {
                      await S.load(
                        const Locale('en'),
                      );
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  S.of(context).counterValue.toString() +
                      '\n' +
                      _counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _decrementCounter();
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
