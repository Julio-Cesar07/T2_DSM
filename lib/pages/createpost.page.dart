import 'package:flutter/material.dart';
import 'package:t2_dsw/const/colors.dart';
import 'package:t2_dsw/generated/l10n.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final TextEditingController controllerPost = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Create Post',
        home: Scaffold(
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
                Spacer(),
                ElevatedButton(
                  child: Text(S.current.post),
                  onPressed: () {
                    print(controllerPost.text);
                  },
                ),
                Padding(padding: const EdgeInsets.all(24.0)),
              ],
            )));
  }
}
