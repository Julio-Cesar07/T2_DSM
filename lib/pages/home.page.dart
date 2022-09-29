import 'package:firedart/firestore/firestore.dart';
import 'package:firedart/firestore/models.dart';
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
    return MaterialApp(
      title: 'GM',
      home: Scaffold(
        backgroundColor: blackColor,
        body: const Center(
          child: Posts(),
        ),
      ),
    );
  }
  // #enddocregion build
}
// #enddocregion Home

class _ShowPost extends State<Posts> {
  // #enddocregion RWS-var


  QueryReference postCollection = Firestore.instance.collection('post').orderBy('date', descending: true);
  
  
  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
    // #docregion itemBuilder
    
    Future<List<Document>> getPost() async{
      final post = await postCollection.get();
      return post;
    }

    return FutureBuilder(
      future: getPost(),
      builder: (context, AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data.length,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: /*1*/ (context, i) {
              var post = snapshot.data[i];

              return Center(
                child: Card(
                  color: blackColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/hotarubi.jpg')),
                        title: Text(
                          '@JuuhCesar',
                          style: TextStyle(color: whiteColor),
                        ),
                        subtitle: Text(
                          post['text'],
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.all(25)),
                          Text(
                            'Rank: ${post['rank']}',
                            style: TextStyle(color: whiteColor),
                          ),
                          Text(
                            'Vagas: ${post['vagancies']}',
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
        }

        else {
                print("Error here in snapshot");
                return Center(child:Text("An error has occurred"));
        
      }
      }
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
  State<Posts> createState() => _ShowPost();
}
