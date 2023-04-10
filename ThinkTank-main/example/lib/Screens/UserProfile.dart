import 'package:flutter/material.dart';
import 'DuzenlemeSayfasi.dart';

class UserProfile extends StatefulWidget {
  final String kullaniciAdi;
  final String eposta;
  final String selectedOption1;
  final String selectedOption2;

  UserProfile(
      {required this.kullaniciAdi,
      required this.eposta,
      required this.selectedOption1,
      required this.selectedOption2});

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String kullaniciAdi = "Dash";
  String eposta = "dash@flutter.dev";
  String selectedOption1 = "Flutter";
  String selectedOption2 = "Mezun";

  @override
  void initState() {
    super.initState();
    kullaniciAdi = widget.kullaniciAdi;
    eposta = widget.eposta;
    selectedOption1 = widget.selectedOption1;
    selectedOption2 = widget.selectedOption2;
  }

  void _updateData(String newKullaniciAdi, String newEposta,
      String newSelectedOption1, String newSelectedOption2) {
    setState(() {
      kullaniciAdi = newKullaniciAdi;
      eposta = newEposta;
      selectedOption1 = newSelectedOption1;
      selectedOption2 = newSelectedOption2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Profil Sayfası'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 320,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '$kullaniciAdi',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8.0),
            Text(
              '$eposta',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8.0),
            Text(
              '$selectedOption1',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8.0),
            Text(
              '$selectedOption2',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 16.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: const Text(
                    'Forum Kahramanı',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: const Text(
                    'Çözüm Odaklı',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DuzenlemeSayfasi(
                            kullaniciAdi: kullaniciAdi,
                            eposta: eposta,
                            selectedOption1: selectedOption1,
                            selectedOption2: selectedOption2,
                            updateData: _updateData,
                          )),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent, // Background color
              ),
              child: Text('Düzenle'),
            ),
          ],

        ),

      ),
    );
  }
}