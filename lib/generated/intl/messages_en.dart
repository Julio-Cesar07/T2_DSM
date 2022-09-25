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
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enter": MessageLookupByLibrary.simpleMessage("Enter"),
        "link_signup": MessageLookupByLibrary.simpleMessage("Register now!"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("LogOut"),
        "myPosts": MessageLookupByLibrary.simpleMessage("My Posts"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "pass": MessageLookupByLibrary.simpleMessage("Password"),
        "post": MessageLookupByLibrary.simpleMessage("Post It!"),
        "profile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "redefinePass":
            MessageLookupByLibrary.simpleMessage("Redefine Password"),
        "register": MessageLookupByLibrary.simpleMessage("Accept and Register"),
        "rememberPass":
            MessageLookupByLibrary.simpleMessage("Don\'t remember your pass?"),
        "text_signup":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "writePost": MessageLookupByLibrary.simpleMessage("Write publication")
      };
}
