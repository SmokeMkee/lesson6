// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "auth": MessageLookupByLibrary.simpleMessage("Authorization"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "countPersons": MessageLookupByLibrary.simpleMessage("Total Persons: "),
        "counterValue": MessageLookupByLibrary.simpleMessage("Counter value"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "genderGirl": MessageLookupByLibrary.simpleMessage("Person, Girl"),
        "genderMan": MessageLookupByLibrary.simpleMessage("Person, Man"),
        "homePage": MessageLookupByLibrary.simpleMessage("Home page"),
        "inputErrorCheckLogin":
            MessageLookupByLibrary.simpleMessage("Check login"),
        "inputErrorCheckPassword":
            MessageLookupByLibrary.simpleMessage("Check password"),
        "inputErrorLoginIsLong": MessageLookupByLibrary.simpleMessage(
            "Login must contain less than 8 symbols"),
        "inputErrorLoginIsShort": MessageLookupByLibrary.simpleMessage(
            "Login must contain more than 3 symbols"),
        "inputErrorPasswordIsLong": MessageLookupByLibrary.simpleMessage(
            "Password ьгые contain less than 16 symbols"),
        "inputErrorPasswordIsShort": MessageLookupByLibrary.simpleMessage(
            "Password must contain more than 8 symbols"),
        "inputLoginAndPassword":
            MessageLookupByLibrary.simpleMessage("Input login and password"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "persons": MessageLookupByLibrary.simpleMessage("Persons"),
        "russian": MessageLookupByLibrary.simpleMessage("Russian"),
        "searchPerson": MessageLookupByLibrary.simpleMessage("Search persons"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "statusAlive": MessageLookupByLibrary.simpleMessage("Alive"),
        "statusDead": MessageLookupByLibrary.simpleMessage("Dead"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try again")
      };
}
