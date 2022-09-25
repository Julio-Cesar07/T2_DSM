// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:t2_dsw/pages/createaccount.page.dart';
import 'package:t2_dsw/pages/home.service.dart';
import 'package:t2_dsw/pages/login.page.dart';
import 'package:t2_dsw/pages/rememberpass.page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Gamers Moments',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomeService(),
        '/rememberPass': (context) => RememberPassPage(),
        '/createAccount': (context) => CreateAccountPage(),
      },
    );
  }
}
