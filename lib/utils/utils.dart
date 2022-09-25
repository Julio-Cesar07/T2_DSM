// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:t2_dsw/const/colors.dart';

class EditedTextFormField extends StatelessWidget {
  final String textName;
  final TextEditingController controllerName;

  const EditedTextFormField(
      {super.key, required this.textName, required this.controllerName});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerName,
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: textName,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }
}

class EditedPassFormField extends StatelessWidget {
  final String textName;
  final TextEditingController controllerName;

  const EditedPassFormField(
      {super.key, required this.textName, required this.controllerName});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerName,
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      keyboardType: TextInputType.number,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: textName,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }
}

class EditedTextButton extends StatelessWidget {
  final String textName;
  final dynamic onPressedFunction;

  const EditedTextButton(
      {super.key, required this.textName, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: darkPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: SizedBox.expand(
        child: TextButton(
          onPressed: onPressedFunction,
          child: Text(
            textName,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
