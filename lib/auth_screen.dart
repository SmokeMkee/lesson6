import 'package:flutter/material.dart';

import 'models/user.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final _formKey = GlobalKey<FormState>();

  final List<User> _users = [User(login: 'qwerty', password: '123456ab')];

  void pressButton(String login, String password) {
    var result = _users
        .where(
            (element) => element.login == login && element.password == password)
        .toList();
    if (result.isNotEmpty) {
      Navigator.of(context).pushNamed('/auth_screen/home_screen');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Попробуйте сново",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text("Закрыть"),
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
          title: const Text('Авторизация'),
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
                      const Text(
                        'Введите логин и пароль',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      TextFormField(
                        controller: login,
                        decoration: const InputDecoration(
                          hintText: 'Ваш логин',
                          labelText: 'Login',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Введите логин';
                          }
                          if (value.length < 3) {
                            return 'Логин должен содержать не менее 3 символов';
                          }
                          if (value.length > 8) {
                            return 'Логин должен содержать не более 8 символов';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
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
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
