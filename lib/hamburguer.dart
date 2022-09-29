import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t2_dsw/const/colors.dart';
import 'package:t2_dsw/generated/l10n.dart';
import 'package:t2_dsw/pages/login.page.dart';
import 'main.dart';

class HamburguerMenu extends StatelessWidget {
  const HamburguerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: darkBlueColor,
        child: Column(children: <Widget>[
          Padding(padding: const EdgeInsets.all(16.0)),
          CircleAvatar(
            radius: 48,
            backgroundImage: AssetImage('assets/hotarubi.jpg'),
          ),
          Padding(padding: const EdgeInsets.all(24.0)),
          ListTile(
              leading: Icon(
                Icons.home,
                color: grayColor,
              ),
              title:
                  Text(S.current.profile, style: TextStyle(color: grayColor)),
              onTap: () => {}),
          ListTile(
              leading: Icon(
                Icons.local_post_office,
                color: grayColor,
              ),
              title:
                  Text(S.current.myPosts, style: TextStyle(color: grayColor)),
              onTap: () => {}),
          ListTile(
              leading: Icon(
                Icons.notifications,
                color: grayColor,
              ),
              title: Text(S.current.notifications,
                  style: TextStyle(color: grayColor)),
              onTap: () => {}),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: grayColor,
                ),
                title:
                    Text(S.current.logout, style: TextStyle(color: grayColor)),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                  }),
          ),
          Padding(padding: const EdgeInsets.all(16.0)),
        ]));
  }
}
