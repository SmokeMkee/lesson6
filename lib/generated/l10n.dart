// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Counter value`
  String get counterValue {
    return Intl.message(
      'Counter value',
      name: 'counterValue',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get auth {
    return Intl.message(
      'Authorization',
      name: 'auth',
      desc: '',
      args: [],
    );
  }

  /// `Input login and password`
  String get inputLoginAndPassword {
    return Intl.message(
      'Input login and password',
      name: 'inputLoginAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Check login`
  String get inputErrorCheckLogin {
    return Intl.message(
      'Check login',
      name: 'inputErrorCheckLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login must contain more than 3 symbols`
  String get inputErrorLoginIsShort {
    return Intl.message(
      'Login must contain more than 3 symbols',
      name: 'inputErrorLoginIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Login must contain less than 8 symbols`
  String get inputErrorLoginIsLong {
    return Intl.message(
      'Login must contain less than 8 symbols',
      name: 'inputErrorLoginIsLong',
      desc: '',
      args: [],
    );
  }

  /// `Check password`
  String get inputErrorCheckPassword {
    return Intl.message(
      'Check password',
      name: 'inputErrorCheckPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain more than 8 symbols`
  String get inputErrorPasswordIsShort {
    return Intl.message(
      'Password must contain more than 8 symbols',
      name: 'inputErrorPasswordIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Password ьгые contain less than 16 symbols`
  String get inputErrorPasswordIsLong {
    return Intl.message(
      'Password ьгые contain less than 16 symbols',
      name: 'inputErrorPasswordIsLong',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Home page`
  String get homePage {
    return Intl.message(
      'Home page',
      name: 'homePage',
      desc: '',
      args: [],
    );
  }

  /// `Persons`
  String get persons {
    return Intl.message(
      'Persons',
      name: 'persons',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Search persons`
  String get searchPerson {
    return Intl.message(
      'Search persons',
      name: 'searchPerson',
      desc: '',
      args: [],
    );
  }

  /// `Alive`
  String get statusAlive {
    return Intl.message(
      'Alive',
      name: 'statusAlive',
      desc: '',
      args: [],
    );
  }

  /// `Dead`
  String get statusDead {
    return Intl.message(
      'Dead',
      name: 'statusDead',
      desc: '',
      args: [],
    );
  }

  /// `Person, Man`
  String get genderMan {
    return Intl.message(
      'Person, Man',
      name: 'genderMan',
      desc: '',
      args: [],
    );
  }

  /// `Person, Girl`
  String get genderGirl {
    return Intl.message(
      'Person, Girl',
      name: 'genderGirl',
      desc: '',
      args: [],
    );
  }

  /// `Total Persons: `
  String get countPersons {
    return Intl.message(
      'Total Persons: ',
      name: 'countPersons',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
