import 'package:flutter/material.dart';
import 'package:flutter_reaction_button_test/Screens/video_player.dart';
import 'Sayfa1.dart';
import 'Sayfa2.dart';
import 'SoruSor.dart';
import 'UserProfile.dart';
import 'video_player.dart';

///Users/berkemremert/Downloads/flutter-reaction-button-master/example/lib/Screens/Sayfa1.dart

import 'package:flutter/material.dart';
class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('ThinkTank'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
              Tab(text: 'Forum'),
              Tab(text: 'Ek Kaynak'),
            ],
               indicatorColor:Colors.orange ,
              indicatorSize: TabBarIndicatorSize.label ,
            ),
            backgroundColor: Colors.deepOrangeAccent,
            actions: [
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG.png'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfile(
                        kullaniciAdi: 'Hulusi Oflaz',
                        eposta: 'hulusioflaz@gmail.com',
                        selectedOption1: 'Flutter',
                        selectedOption2: 'Bursiyer',),
                    ),
                  );
                },
              ),
            ],
          ),
          body: TabBarView(children: [
            Sayfa2(), Sayfa1(),
          ],)
        ));
  }
}


