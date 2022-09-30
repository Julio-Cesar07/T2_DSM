// ignore_for_file: prefer_const_constructors

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:t2_dsw/generated/l10n.dart';

import 'package:t2_dsw/const/colors.dart';
import 'package:t2_dsw/utils/utils.dart' as utils;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  var _language = 'pt_BR';

  @override
  void initState() {
    super.initState();
    _loadLanguage();
  }

  Future<void> _loadLanguage() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _language = (prefs.getString('language') ?? 'pt_BR');
      S.load(Locale(_language));
      print('load: $_language');
    });
  }
  
  Future<void> changeLanguage() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      var locale = Intl.getCurrentLocale();
      print('locale: $locale');
      if (locale == "pt_BR") {
        S.load(Locale('en', 'US'));
      } else {
        S.load(Locale('pt', 'BR'));
      }
      locale = (locale == "pt_BR" ? "en_US": "pt_BR");
      prefs.setString('language', locale);
      print('change: ${prefs.getString('language')}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Colors.black,
              backDarkPurple,
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 80,
            ),
            utils.EditedTextFormField(
              textName: S.of(context).email,
              controllerName: _emailController,
            ),
            SizedBox(
              height: 20,
            ),
            utils.EditedPassFormField(
              textName: S.of(context).pass,
              controllerName: _passController,
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/rememberPass');
                },
                child: Text(
                  S.of(context).rememberPass,
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // Login Button
            utils.EditedTextButton(
              textName: S.of(context).login,
              onPressedFunction: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    S.of(context).text_signup,
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/createAccount');
                    },
                    child: Text(
                      S.of(context).link_signup,
                      style: TextStyle(color: darkPurple),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        child: Icon(Icons.language),
        onPressed: () {
          changeLanguage();
        },
      ),
    );
  }
}
