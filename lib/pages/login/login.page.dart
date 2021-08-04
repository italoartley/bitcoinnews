import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bitcoinnews/pages/home/home.page.dart';
import 'package:bitcoinnews/pages/reset-password.page.dart';
import 'package:bitcoinnews/pages/login/login.service.dart';
import 'package:bitcoinnews/pages/signup/signup.page.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _mailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("imagens/logobitcoin.png"),
            ),
            SizedBox(
              height: 1,
            ),
            TextFormField(
              controller: _mailInputController,
            // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(suffixIcon: Icon(Icons.mail_outline,color: Colors.white),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20,color: Colors.white,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            TextFormField(
              controller: _passwordInputController,
            // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.white),
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  ),
              ),
              style: TextStyle(fontSize: 20,color: Colors.white
              ),
            ),
            Container(height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white
                  ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetPasswordPage(),
                      ),
                    );
                  },
              ),
            ),
            SizedBox(
              height: 20,
              ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                  stops: [1],
                  colors: [
                    Color(0xFFF59100),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                          ),
                    ],
                  ),
                  onPressed: () {
                    _doLogin();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),

              onPressed: () {
                  Navigator.push(
                  context,
                    MaterialPageRoute(
                    builder: (context) => SignupPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _doLogin() async {
    if (_formKey.currentState!.validate()) {
      LoginService()
          .login(_mailInputController.text, _passwordInputController.text);
      print("Válido");
    } else {
      print("invalido");
    }
  }
  }

