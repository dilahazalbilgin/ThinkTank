import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:flutter_reaction_button_test/ui/common/item_forum.dart';

import '../Screens/video_player.dart';
import '../data/example_data.dart' as example_data;
import 'common/item.dart';
import 'common/item_container.dart';

class AppWidget_forum extends StatelessWidget {
  const AppWidget_forum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ek Kaynak',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Builder(
          builder: (_) {
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 5),
              children: [
                Item_forum(
                  title: 'Forum Paylaşım 1',
                  imgPath: 'assets/images/forum_1.jpg',
                  reactions: example_data.reactions,
                ),
                Item_forum(
                  title: 'Forum Paylaşım 2',
                  imgPath: 'assets/images/forumsorular-2.jpg',
                  reactions: example_data.reactions,
                ),
                Item_forum(
                  title: 'Forum Paylaşım 3',
                  imgPath: 'assets/images/forumsorular-3.jpg',
                  reactions: example_data.reactions,
                ),
                Item_forum(
                  title: 'Forum Paylaşım 4',
                  imgPath: 'assets/images/forumsorular-4.jpg',
                  reactions: example_data.reactions,
                ),
                Item_forum(
                  title: 'Forum Paylaşım 5',
                  imgPath: 'assets/images/forumsorular-5.jpg',
                  reactions: example_data.reactions,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
