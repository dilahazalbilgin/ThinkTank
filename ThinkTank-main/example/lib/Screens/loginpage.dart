
import 'package:flutter/material.dart';
import 'package:flutter_reaction_button_test/Screens/Sayfa1.dart';
import 'package:flutter_reaction_button_test/Screens/Screens.dart';

import '../ui/common/item_container.dart';
import '../ui/common/item_forum.dart';
import '../data/example_data.dart' as example_data;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                    text: 'ThinkTank',
                    style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                    ]
                ),
              ),
              SizedBox(height: 10.0),
              ItemContainer(
                imgPath: 'assets/images/flutterdash.jpg',
                reactions: example_data.reactions,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  labelText: "Kullanıcı Adı",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Kullanıcı Adınızı Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  username = value!;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  labelText: "Kullanıcı Şifresi",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Kullanıcı Şifrenizi Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value!;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Üye Ol"),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text("Şifremi Unuttum"),
                    onPressed: () {},
                  ),
                ],
              ),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _loginButton() => ElevatedButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
    ),
    child: Text("Giriş Yap"),
  onPressed: () {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        // burada giriş işlemini gerçekleştirin
        if (usernames.contains(username) && passwords.contains(password)) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Screens()));
        }else {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Hata"),
                  content: Text("Giriş bilgileriniz Hatalı"),
                  actions: <Widget>[
                    MaterialButton(
                        child: Text("Geri Dön"),
                        onPressed: () => Navigator.pop(context))
                  ],
                );
              });
        }
      }
    },
  );
}

String usernames = "berkhazalhulusikevser";
String passwords = "1234";


class debug {
}
/* Widget _loginButton() {
    return RaisedButton(
      child: Text("Giriş Yap"),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
        }
      },
    );
  }*/

