import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:t2_dsw/const/colors.dart';
import 'package:t2_dsw/generated/l10n.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  CollectionReference postCollection = Firestore.instance.collection('post');
  
  DateTime data = DateTime.now();

  final TextEditingController controllerPost = TextEditingController();
  final TextEditingController controllerRank = TextEditingController();
  final TextEditingController controllerVagancies = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: darkBlueColor,
            body: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 240.0, top: 24.0)),
                TextFormField(
                    controller: controllerPost,
                    style: TextStyle(
                      color: whiteColor,
                    ),
                    decoration: InputDecoration(
                        hintText: S.current.writePost,
                        hintStyle: TextStyle(color: whiteColor))),
                Padding(padding: const EdgeInsets.all(16.0)),        
                TextFormField(
                    controller: controllerRank,
                    style: TextStyle(
                      color: whiteColor,
                    ),
                    decoration: InputDecoration(
                        hintText: S.current.writePost,
                        hintStyle: TextStyle(color: whiteColor))),
                Padding(padding: const EdgeInsets.all(16.0)),
                TextFormField(
                    controller: controllerVagancies,
                    style: TextStyle(
                      color: whiteColor,
                    ),
                    decoration: InputDecoration(
                        hintText: S.current.writePost,
                        hintStyle: TextStyle(color: whiteColor))),
                Spacer(),
                ElevatedButton(
                  child: Text(S.current.post),
                  onPressed: () async {
                    await postCollection.add({
                      'text': controllerPost.text,
                      'rank': controllerRank.text,
                      'vagancies': controllerVagancies.text,
                      'date': data,
                    });
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                Padding(padding: const EdgeInsets.all(24.0)),
              ],
            ));
  }
}
