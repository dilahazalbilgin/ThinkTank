import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import '../Screens/SoruSor.dart';
import '../Screens/video_player.dart';
import '../Screens/button_button.dart';
import '../data/example_data.dart' as example_data;


import 'common/item.dart';
import 'common/item_container.dart';
import 'cupertino_radio_choice.dart';

enum Sizes { extraSmall, small, medium, large, extraLarge }
enum Calendar { day, week, month, year }


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

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
                Item(
                  title: 'Akademi 2. Ders',
                  imgPath: "https://www.youtube.com/watch?v=VPvVD8t02U8&ab_channel=freeCodeCamp.org",
                  reactions: example_data.reactions,
                ),
                SizedBox(height: 20.0),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade50),
                  ),
                  child: Text('Kod içinde kullanılan bir değeri hızlıca bir\ndeğişkene almak için ne yapabiliriz?'),
                  onPressed: () {
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('A) Ctrl-space, introduce variable'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('B) Ctrl-enter, introduce variable'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('C) Alt-enter, introduce variable'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('D) Ctrl-Alt-Shift-T, introduce variable'),
                  onPressed: () {
                    showAlertDialog(context, "Tebrikler!", "Seçmiş olduğunuz seçenek doğru.");
                  },
                ),
                SizedBox(height: 20.0),
                Item(
                  title: 'Akademi 4. Ders',
                  imgPath: "https://www.youtube.com/watch?v=l4bLPfS1uik&t=548s&ab_channel=AtifNaseem",
                  reactions: example_data.reactions,
                ),
                SizedBox(height: 20.0),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade50),
                  ),
                  child: Text('Aşağıdaki Collection\'ların hangisinde\n"switch" komutu kullanılabilir?'),
                  onPressed: () {
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('A) Map'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('B) List'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('C) Set'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('D) Collection içerisinde switch kullanılamaz'),
                  onPressed: () {
                    showAlertDialog(context, "Tebrikler!", "Seçmiş olduğunuz seçenek doğru.");
                  },
                ),
                SizedBox(height: 20.0),
                Item(
                  title: 'Akademi 5. Ders',
                  imgPath: "https://www.youtube.com/watch?v=FotsFANrIrU&ab_channel=FlutterMapp",
                  reactions: example_data.reactions,
                ),
                SizedBox(height: 20.0),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade50),
                  ),
                  child: Text('Yeni ekrana gittikten sonra geri gelirken,\no ekranı tetikleyen koda bir değer dönmek\niçin ne yapabiliriz?'),
                  onPressed: () {
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('A) Return yapabiliriz.'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('B) Navigator.of(context).push(değer) yapabiliriz.'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('C) Navigator.of(context).pop(değer) yapabiliriz.'),
                  onPressed: () {
                    showAlertDialog(context, "Tebrikler!", "Seçmiş olduğunuz seçenek doğru.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('D) Yeni ekrana verdiğimiz fonksiyonu\nçağırarak dışarıya bilgi iletebiliriz.'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                SizedBox(height: 20.0),
                Item(
                  title: 'Akademi 5. Ders',
                  imgPath: "https://www.youtube.com/watch?v=1xipg02Wu8s&ab_channel=Fireship",
                  reactions: example_data.reactions,
                ),
                SizedBox(height: 20.0),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade50),
                  ),
                  child: Text('Aşağıdakilerden hangisi internetten aldığımız\nbir görseli uygulamada göstermemizi sağlar\nve doğrudan başka bir widget\'ın child\'ı\nolarak kullanılabilir?'),
                  onPressed: () {
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('A) NetworkImage'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('B) Image.network()'),
                  onPressed: () {
                    showAlertDialog(context, "Tebrikler!", "Seçmiş olduğunuz seçenek doğru.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('C) Image.asset()'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('D) ImageProvider'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                SizedBox(height: 20.0),
                Item(
                  title: 'Akademi 5. Ders',
                  imgPath: "https://www.youtube.com/watch?v=F2xtrS3xSLo&ab_channel=dbestech",
                  reactions: example_data.reactions,
                ),
                SizedBox(height: 20.0),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade50),
                  ),
                  child: Text('class B extends A { } ifadesi için\naşağıdakilerden hangisi yanlıştır?'),
                  onPressed: () {
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('A) A class\'ı , B\'nin özelleştirilmiş halidir'),
                  onPressed: () {
                    showAlertDialog(context, "Tebrikler!", "Seçmiş olduğunuz seçenek doğru.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('B) A\'nın içindeki her şey B\'de de yer alır'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('C) B class\'ı içerisinde A\'da bulunan\nbir fonksiyon tekrar tanımlanabilir'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('D) A superclass, B subclass olur'),
                  onPressed: () {
                    showAlertDialog(context, "Tekrar Deneyiniz", "Seçmiş olduğunuz seçenek doğru değil, tekrar seçim yapınız.");
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
showAlertDialog(BuildContext context, String text, String message) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("Tamam"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(text),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}