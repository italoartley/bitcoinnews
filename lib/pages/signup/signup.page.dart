
import 'package:flutter/material.dart';
import 'package:bitcoinnews/pages/login/login.page.dart';
import 'package:bitcoinnews/pages/signup/signup-service.dart';

class SignupPage extends StatelessWidget {
  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _mailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              alignment: Alignment(0.0, 1.35),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("imagens/profile-picture.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Container(
                height: 50.0,
                width: 56.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [1.0],
                    colors: [
                      Color(0xFFF59100),
                    ],
                  ),
                  border: Border.all(
                    width: 1.5,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _nameInputController,
              // autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,color: Colors.orangeAccent
              ),
            ),
            SizedBox(
              height: 10,
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
              style: TextStyle(
                fontSize: 20,color: Colors.orangeAccent
              ),
            ),
            SizedBox(
              height: 10,
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
              style: TextStyle(fontSize: 20,color: Colors.orangeAccent)
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
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    _doSignUp();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
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
                      builder: (context) => LoginPage(),
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
  void _doSignUp(){
    if(_formatKey.currentState.validate()) {
      SignUpService().signUp(_mailInputController.text, _passwordInputController.text);
      print("Válido");
    }else{
      print("Inválido");
    }

  }
  //void _saveUser(LoginModel user) async{
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setString("Login_User", json.encode(user.toJson()),
    //);
  //}
}

class _formatKey {
  static var currentState;
}