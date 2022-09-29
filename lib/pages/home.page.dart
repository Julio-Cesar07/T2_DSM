import 'package:flutter/material.dart';
import 'package:t2_dsw/generated/l10n.dart';
import 'package:t2_dsw/hamburguer.dart';
import 'package:t2_dsw/navigationBar.dart';
import 'package:t2_dsw/const/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: const Center(
          child: Posts(),
        ),
      );
  }
  // #enddocregion build
}
// #enddocregion Home

class _GetPost extends State<Posts> {
  // #enddocregion RWS-var

  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
    // #docregion itemBuilder
    return ListView.builder(
      itemCount: 5,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        return Center(
          child: Card(
            color: blackColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/hotarubi.jpg')),
                  title: Text(
                    '@JuuhCesar',
                    style: TextStyle(color: whiteColor),
                  ),
                  subtitle: Text(
                    'Olá, estou convidando o pessoal para jogar Rocket League.',
                    style: TextStyle(color: whiteColor),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.all(25)),
                    Text(
                      'Rank: Platina',
                      style: TextStyle(color: whiteColor),
                    ),
                    Text(
                      'Vagas: 2',
                      style: TextStyle(color: whiteColor),
                    )
                  ],
                ),
                Image.asset(
                  'assets/rocket.jpg',
                  height: 200,
                  width: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: Text(
                        S.current.enter,
                        style: TextStyle(color: whiteColor),
                      ),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
                Divider(
                  color: whiteColor,
                ),
              ],
            ),
          ),
        );
      },
    );
    // #enddocregion itemBuilder
  }
  // #enddocregion RWS-build
  // #docregion RWS-var
}
// #enddocregion RWS-var

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _GetPost();
}
