import 'package:flutter/material.dart';
import 'package:flutter_reaction_button_test/Screens/UserProfile.dart';

class DuzenlemeSayfasi extends StatefulWidget {
  final String kullaniciAdi;
  final String eposta;
  String selectedOption1;
  String selectedOption2;

  DuzenlemeSayfasi({
    required this.kullaniciAdi,
    required this.eposta,
    required this.selectedOption1,
    required this.selectedOption2,
    void Function(String newKullaniciAdi, String newEposta,
            String newSelectedOption1, String newSelectedOption2)?
        updateData,
  });

  @override
  _DuzenlemeSayfasiState createState() => _DuzenlemeSayfasiState();
}

class _DuzenlemeSayfasiState extends State<DuzenlemeSayfasi> {
  late TextEditingController _kullaniciAdiController;
  late TextEditingController _epostaController;
  String get _selectedOption1 => widget.selectedOption1;
  String get _selectedOption2 => widget.selectedOption2;

  @override
  void initState() {
    super.initState();
    _kullaniciAdiController = TextEditingController(text: widget.kullaniciAdi);
    _epostaController = TextEditingController(text: widget.eposta);
  }

  @override
  void dispose() {
    _kullaniciAdiController.dispose();
    _epostaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Düzenleme Sayfası'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              style: TextStyle(color: Colors.deepPurpleAccent),
              controller: _kullaniciAdiController,
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              style: TextStyle(color: Colors.deepPurpleAccent),
              controller: _epostaController,
              decoration: InputDecoration(
                labelText: 'Eposta',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Seçenek 1'),
            RadioListTile<String>(
              title: Text('Unity'),
              value: 'Unity',
              groupValue: _selectedOption1,
              onChanged: (value) {
                setState(() {
                  widget.selectedOption1 = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Flutter'),
              value: 'Flutter',
              groupValue: _selectedOption1,
              onChanged: (value) {
                setState(() {
                  widget.selectedOption1 = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text('Seçenek 2'),
            RadioListTile<String>(
              title: Text('Bursiyer'),
              value: 'Bursiyer',
              groupValue: _selectedOption2,
              onChanged: (value) {
                setState(() {
                  widget.selectedOption2 = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Mezun'),
              value: 'Mezun',
              groupValue: _selectedOption2,
              onChanged: (value) {
                setState(() {
                  widget.selectedOption2 = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop({
                  'kullaniciAdi': _kullaniciAdiController.text,
                  'eposta': _epostaController.text,
                  'selectedOption1': _selectedOption1,
                  'selectedOption2': _selectedOption2,
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent, // Background color
              ),
              child: Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}