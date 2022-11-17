
import 'dart:math';

import 'package:flappy_search_bar_ns/flappy_search_bar_ns.dart';
import 'package:flappy_search_bar_ns/scaled_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/main.dart';

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class searchpage extends StatefulWidget {
  @override
  _searchpageState createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String? text) async {
    await Future.delayed(Duration(seconds: text!.length == 4 ? 10 : 1));
    if (isReplay) return [Post("Replaying !", "Replaying body")];
    if (text.length == 5) throw Error();
    if (text.length == 6) return [];
    List<Post> posts = [];

    var random = new Random();
    for (int i = 0; i < 10; i++) {
      posts.add(
        Post("$text $i", "body random number : ${random.nextInt(100)}"),
      );
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      child: SearchBar<Post>(
            searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
            headerPadding: EdgeInsets.symmetric(horizontal: 10),
            listPadding: EdgeInsets.symmetric(horizontal: 10),
            onSearch: _getALlPosts,
            searchBarController: _searchBarController,
            onError: (error) => Text('ERROR: ${error.toString()}'),
            cancellationWidget: Text("Cancel"),
            emptyWidget: Text("empty"),
            indexedScaledTileBuilder: (int index) =>
                ScaledTile.count(1, index.isEven ? 2 : 1),
            onCancelled: () {
              print("Cancelled triggered");
            },
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            onItemFound: (Post? post, int index) {
              return Container(
                color: Colors.lightBlue,
                child: ListTile(
                  title: Text(post!.title),
                  isThreeLine: true,
                  subtitle: Text(post.body),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => MyApp()));
                  },
                ),
              );
            },
          ),
    );
  }
}

