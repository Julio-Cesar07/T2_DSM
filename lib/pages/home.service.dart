import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t2_dsw/pages/home.page.dart';
import 'package:t2_dsw/navigationBar.dart';

import 'package:t2_dsw/const/colors.dart';
import 'package:t2_dsw/hamburguer.dart';

class HomeService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GM',
        home: Scaffold(
          bottomNavigationBar: NavigationBarApp(),
        ));
  }
}
