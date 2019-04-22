import 'package:flutter/material.dart';
import 'package:zones/Blocs/HexColor.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  // Color blue=HexColor("#32303b");
  //Color orange = HexColor("#3c3030");
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'logo',
        child: Image.asset(
          'assets/zones_icon.png',
          alignment: Alignment.topCenter,
        ));

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: new TextStyle(color: Colors.cyan),
        hintText: 'ABC@abc.com',
        fillColor: Colors.white,
        icon: new Icon(Icons.person, color: Colors.cyan),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
        ),
      ),

      // decoration: InputDecoration(

      //filled: true,
      //fillColor: Colors.grey,
      // hasFloatingPlaceholder: true,
      // hintText: "Email",
      // border: new OutlineInputBorder(
      // ),

      //),
    );

    final password = TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: new TextStyle(color: Colors.cyan),
        hintText: '********',
        fillColor: Colors.white,
        icon: new Icon(Icons.lock_open, color: Colors.cyan),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
        ),
      ),
    );

    final logInContainer = new Container(
        padding: EdgeInsets.only(top: 22.0),
        child: new Column(children: <Widget>[
          new Padding(padding: new EdgeInsets.all(22.0)),
          logo,
          SizedBox(height: 5.0),
          email,
          SizedBox(height: 5.0),

          password
        ]));



    final backGroundImage =Image.asset(
      "assets/zones_icon.png",
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );


    return Stack(
      children: <Widget>[
        //backGroundImage,

      new Scaffold(
        backgroundColor: Colors.white,
        body: new Container(

            child: new ListView(
          padding: EdgeInsets.all(32.0),
          children: <Widget>[logInContainer],
            )
          )
        )
      ]
    );
  }
}
