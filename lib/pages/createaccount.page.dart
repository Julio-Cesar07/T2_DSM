// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:t2_dsw/generated/l10n.dart';

import 'package:t2_dsw/const/colors.dart';
import 'package:t2_dsw/utils/utils.dart' as utils;

class CreateAccountPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

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
              textName: S.of(context).name,
              controllerName: _nameController,
            ),
            SizedBox(
              height: 40,
            ),
            utils.EditedTextFormField(
              textName: S.of(context).email,
              controllerName: _emailController,
            ),
            SizedBox(
              height: 40,
            ),
            utils.EditedPassFormField(
              textName: S.of(context).pass,
              controllerName: _passController,
            ),
            SizedBox(
              height: 40,
            ),
            utils.EditedTextButton(
              textName: S.of(context).register,
              onPressedFunction: () => {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        child: Icon(Icons.arrow_back_rounded),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
