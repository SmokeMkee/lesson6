
import 'package:flutter/material.dart';
import 'package:lesson3/constants/app_assets.dart';
import 'package:lesson3/screens/login/widgets/button.dart';
import 'package:lesson3/screens/login/widgets/login_text_field.dart';
import 'package:lesson3/screens/login/widgets/password_text_field.dart';

import '../../generated/l10n.dart';
import '../../models/Login.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final _formKey = GlobalKey<FormState>();

  final List<Login> _users = [Login(login: 'qwerty', password: '123456ab')];

  void pressButton(String login, String password) {
    var result = _users
        .where(
            (element) => element.login == login && element.password == password)
        .toList();
    if (result.isNotEmpty) {
      Navigator.of(context).pushReplacementNamed('/auth_screen/nav_bar');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              S.of(context).tryAgain,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text(S.of(context).close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(AppAssets.images.logo),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('ds'),
                      LoginTextField(),
                      SizedBox(height: 10.0),
                      Text('ds'),
                      PasswordTextFieldInput(),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    children: const [
                      Expanded(child: Button()
                          // ElevatedButton(
                          //   onPressed: () {
                          //     if (_formKey.currentState!.validate()) {
                          //       pressButton(login.text, password.text);
                          //     }
                          //   },
                          //   child: Text(S.of(context).signIn),
                          // ),
                          ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('У вас еще нет аккаунта?'),
                      Text('Создать ')
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
