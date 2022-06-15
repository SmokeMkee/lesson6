import 'package:flutter/material.dart';

import 'generated/l10n.dart';
import 'models/Login.dart';

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
      appBar: AppBar(
        title: Text(S.of(context).auth),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).inputLoginAndPassword,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    TextFormField(
                      controller: login,
                      decoration: InputDecoration(
                        hintText: S.of(context).login,
                        labelText: S.of(context).login,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).inputErrorCheckLogin;
                        }
                        if (value.length < 3) {
                          return S.of(context).inputErrorLoginIsShort;
                        }
                        if (value.length > 8) {
                          return S.of(context).inputErrorLoginIsLong;
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: password,
                      decoration: InputDecoration(
                        hintText: S.of(context).password,
                        labelText: S.of(context).password,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).password;
                        }
                        if (value.length < 8) {
                          return S.of(context).inputErrorPasswordIsShort;
                        }
                        if (value.length > 16) {
                          return S.of(context).inputErrorPasswordIsLong;
                        }

                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          pressButton(login.text, password.text);
                        }
                      },
                      child: Text(S.of(context).signIn),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
